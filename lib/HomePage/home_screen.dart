import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo2/HomePage/knowledge_listtile2.dart';
import 'package:demo2/HomePage/knowledge_model.dart';
import 'package:demo2/HomePage/quote_card.dart';
import 'package:demo2/HomePage/quote_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          //45% of total height
          height: size.height,
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
              color: Colors.black.withOpacity(0.15),
            ),
          ),
        ),
        SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hello Chan",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/flying astronaut.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider.builder(
                    itemCount: Quote.quoteData.length,
                    itemBuilder: (context, index, id) =>
                        QuoteCard(Quote.quoteData[index]),
                    options: CarouselOptions(
                      aspectRatio: 16 / 6,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Did you know?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 9.0,
                    ),
                    children: Knowledge.KnowledgeData.map(
                        (e) => KnowledgeListTile2(e)).toList(),
                  ),
                ),
              ],
            ),
          )),
        )
      ],
    );
  }
}
