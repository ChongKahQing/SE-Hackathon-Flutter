import 'package:demo2/HomePage/home_details.dart';
import 'package:demo2/HomePage/knowledge_model.dart';
import 'package:flutter/material.dart';

class KnowledgeListTile2 extends StatefulWidget {
  KnowledgeListTile2(this.data, {Key? key}) : super(key: key);
  Knowledge data;

  @override
  State<KnowledgeListTile2> createState() => _KnowledgeListTile2State();
}

class _KnowledgeListTile2State extends State<KnowledgeListTile2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailsScreen(widget.data),
              ));
        },
        child: Container(
          width: size.width * 0.43,
          margin: EdgeInsets.only(bottom: 5.0),
          //padding: EdgeInsets.all(12.0),
          //height: size.height * 0.3,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 31, 31, 31).withOpacity(0.7),
            borderRadius: BorderRadius.circular(26.0),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 0,
                child: Hero(
                  tag: "${widget.data.title}",
                  child: Container(
                    height: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26)),
                      image: DecorationImage(
                        image: NetworkImage(widget.data.urlToImage!),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    Text(
                      widget.data.title!,
                      textAlign: TextAlign.center,
                      //overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    /*Text(widget.data.content!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white54,
                        ))*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
