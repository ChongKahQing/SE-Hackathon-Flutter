import 'dart:ui';

import 'package:demo2/Test/quiz_screen.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
              color: Colors.black.withOpacity(0.25),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Are You Ready to Take the Depression Test?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                width: 1000,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ast_test.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 255, 196, 0),
                          Color.fromARGB(255, 250, 254, 9),
                        ]),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "Please note: Online screening tools are not diagnostic instruments. You are encouraged to share your results with a physician or healthcare provider. Mental Health America Inc., sponsors, partners, and advertisers disclaim any liability, loss, or risk incurred as a consequence, directly or indirectly, from the use and application of these screens.\nSource: PHQ9 Copyright © Pfizer Inc. All rights reserved. Reproduced with permission. PRIME-MD ® is a trademark of Pfizer Inc.",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
