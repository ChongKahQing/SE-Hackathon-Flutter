import 'dart:ui';

import 'package:demo2/Hotline/hotline_list_tile.dart';
import 'package:demo2/Hotline/hotline_model.dart';
import 'package:flutter/material.dart';

class HotlinePage extends StatefulWidget {
  const HotlinePage({Key? key}) : super(key: key);

  @override
  State<HotlinePage> createState() => _HotlinePageState();
}

class _HotlinePageState extends State<HotlinePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 1.0,
            image: AssetImage("assets/space_bg.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            color: Colors.black.withOpacity(0),
          ),
        ),
      ),
      SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Hotline",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/friend.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children:
                    Hotline.HotlineData.map((e) => HotlineListTile(e)).toList(),
              ),
            ],
          ),
        )),
      )
    ]);
  }
}
