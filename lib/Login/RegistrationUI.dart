import 'dart:ui';

import 'package:demo2/Login/LoginUi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUI(),
                  ));
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
          child: SingleChildScrollView(
              child: Stack(
        children: [
          Container(
            height: 1000,
            width: 1000,
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 120),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/ast2.png",
                height: 250,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: Container(
                    height: 330,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 255, 254),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
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
                          padding: const EdgeInsets.all(5),
                          width: 250,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 250,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Confirmed Password',
                              suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 15),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromARGB(255, 45, 76, 175),
                                    Color.fromARGB(255, 47, 75, 87),
                                  ]),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginUI()),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
            ]),
          ),
        ],
      ))),
    );
  }
}
