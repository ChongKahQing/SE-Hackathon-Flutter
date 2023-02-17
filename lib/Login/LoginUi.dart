import 'dart:ui';

import 'package:demo2/HomePage/Homepage.dart';
import 'package:demo2/Login/ForgotPassUI.dart';
import 'package:demo2/Login/RegistrationUI.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
          child: Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/space_bg.jpg"),
            fit: BoxFit.fitHeight,
          )),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80),
          child: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      "assets/ast.png",
                    ))),
                  ),
                  const Text(
                    "WELCOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        height: 300,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 253, 255, 254),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(7),
                              width: 250,
                              // ignore: prefer_const_constructors
                              child: TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Username',
                                  suffixIcon: Icon(FontAwesomeIcons.user),
                                ),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(7),
                              width: 250,
                              child: const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
                                ),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
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
                                        Color.fromARGB(255, 45, 76, 175),
                                        Color.fromARGB(255, 47, 75, 87),
                                      ]),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordPage()),
                                  );
                                },
                                child: const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 228, 50, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    //child: Text('Don\'t have an account? Create'),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Don\'t have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 228, 228, 228),
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistrationPage()));
                          },
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.amberAccent),
                      ),
                    ])),
                  ),
                ],
              ),
            ),
          ),
        )
      ])),
    );
  }
}
