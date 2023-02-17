import 'dart:ui';

import 'package:demo2/Hotline/hotline_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineDetailsScreen extends StatefulWidget {
  HotlineDetailsScreen(this.data, {Key? key}) : super(key: key);
  Hotline data;
  @override
  State<HotlineDetailsScreen> createState() => _HotlineDetailsScreenState();
}

class _HotlineDetailsScreenState extends State<HotlineDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
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
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    widget.data.name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: size.height * 0.3,
                    alignment: Alignment.center,
                    child: Hero(
                      tag: "${widget.data.name}",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          widget.data.urlToImage!,
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.data.description!,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {
                      String url = 'tel:' + widget.data.contact!;
                      await launchUrl(Uri.parse(url));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          widget.data.contact!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.data.email!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {
                      String url = widget.data.website!;
                      await launchUrl(Uri.parse(url));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.apartment,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          widget.data.website!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
