import 'dart:ui';

import 'package:demo2/HomePage/home_screen.dart';
import 'package:demo2/Mood/data_model.dart';
import 'package:demo2/Mood/moodlog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../MusicPage/musicList.dart';

class MoodPage extends StatefulWidget {
  const MoodPage({super.key});

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  static List<String> moodName = [
    'Happy',
    'Sad',
    'Angry',
    'Scared',
    'Loving',
    'Surprised'
  ];

  static List image = [
    'assets/smile.png',
    'assets/sad.png',
    'assets/angry.png',
    'assets/scared.png',
    'assets/loving.png',
    'assets/surprised.png',
  ];

  final List<Mood> mooddata = List.generate(moodName.length,
      (index) => Mood('${moodName[index]}', '${image[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent.withOpacity(0),
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Text(
                    "What's your mood now?",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 30,
                      alignment: WrapAlignment.center,
                      children: [
                        for (int index = 0; index < mooddata.length; index++)
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            color: Color.fromARGB(255, 225, 176, 250)
                                .withOpacity(0.7),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        MoodLog(mood: mooddata[index])));
                              },
                              child: Container(
                                margin: EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(mooddata[index].image),
                                    ),
                                    Text(
                                      mooddata[index].name,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
