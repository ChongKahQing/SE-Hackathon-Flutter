import 'dart:ui';

import 'package:demo2/Mood/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../MusicPage/musicList.dart';

class MoodLog extends StatelessWidget {
  final Mood mood;
  const MoodLog({super.key, required this.mood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent.withOpacity(0),
      appBar: AppBar(
        title: Text(
          "Mood Log",
          style: TextStyle(fontSize: 27),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MusicList(),
                  ));
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/space_bg.jpg"),
                    fit: BoxFit.fitHeight)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110, left: 15, right: 15),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: Color.fromARGB(255, 148, 254, 222).withOpacity(0.8),
              child: Container(
                margin: EdgeInsets.all(9),
                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(mood.image)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      DateFormat("yyyy-MM-dd").format(DateTime.now()),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      DateFormat("HH:mm:ss").format(DateTime.now()),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
