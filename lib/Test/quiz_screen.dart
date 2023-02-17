import 'dart:ui';

import 'package:demo2/HomePage/Homepage.dart';
import 'package:demo2/Test/question_model.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Over the last 2 weeks, how often have you been bothered by any of the following problems?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.yellow, Colors.amber]),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Colors.orangeAccent : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            score = score + answer.mark;
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _showScoreDialog()),
            );

            //showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    String title;
    String activities;
    String description =
        'These results are not meant to be a diagnosis. You can meet with a doctor or therapist to get a diagnosis and/or access therapy or medications. Sharing these results with someone you trust can be a great place to start.';
    if (score >= 20) {
      title = 'Severe depression';
      activities =
          '-Going to a movie\n-Jogging or walking\n-Listening to music\n-Relaxing';
    } else if (score >= 15) {
      title = 'Moderately severe depression';
      activities =
          '-Going to a movie\n-Jogging or walking\n-Listening to music\n-Relaxing';
    } else if (score >= 10) {
      title = 'Moderate depression';
      activities =
          '-Going to a movie\n-Jogging or walking\n-Listening to music\n-Relaxing';
    } else if (score >= 9) {
      title = 'Mild depression';
      activities =
          '-Going to a movie\n-Jogging or walking\n-Listening to music\n-Relaxing';
    } else
      title = 'Minimal depression';
    activities =
        '1. Watching a movie\n2. Jogging or walking\n3. Listening to music\n4. Relaxing';

    return Material(
      child: Scaffold(
        body: Stack(children: [
          Container(
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
                color: Colors.black.withOpacity(0.2),
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
                    height: 60.0,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(3),
                            topLeft: Radius.circular(3))),
                    color: Color.fromARGB(255, 255, 241, 171),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Score is $score / 27",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 255, 248, 181),
                                  Color.fromARGB(255, 245, 223, 79)
                                ]),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Recommended Activities:",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              activities,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 230,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 236, 218, 98),
                                Color.fromARGB(255, 251, 185, 43)
                              ]),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Done",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

//   _showScoreDialog() {
//     String title;
//     String description =
//         'These results are not meant to be a diagnosis. You can meet with a doctor or therapist to get a diagnosis and/or access therapy or medications. Sharing these results with someone you trust can be a great place to start.';
//     if (score >= 20) {
//       title = 'Severe depression';
//     } else if (score >= 15) {
//       title = 'Moderately severe depression';
//     } else if (score >= 10) {
//       title = 'Moderate depression';
//     } else if (score >= 9) {
//       title = 'Mild depression';
//     } else
//       title = 'Minimal depression';

//     return AlertDialog(
//       title: Text(
//         title + " | Score is $score",
//         style: TextStyle(color: Colors.white),
//       ),
//       content: ElevatedButton(
//         child: const Text("Restart"),
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => HomePage()));
//         },
//       ),
//     );
//   }
// }
