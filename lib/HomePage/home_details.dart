import 'dart:ui';

import 'package:demo2/HomePage/home_screen.dart';
import 'package:demo2/HomePage/knowledge_model.dart';
import 'package:flutter/material.dart';

class HomeDetailsScreen extends StatefulWidget {
  HomeDetailsScreen(this.data, {Key? key}) : super(key: key);
  Knowledge data;
  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //iconTheme: IconThemeData(color: Colors.black),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(children: <Widget>[
        Container(
          //45% of total height
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 1.0,
              image: AssetImage("assets/892.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0.45),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Text(
                  widget.data.title!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.data.author!,
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Hero(
                  tag: "${widget.data.title}",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(widget.data.urlToImage!),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  widget.data.content!,
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
