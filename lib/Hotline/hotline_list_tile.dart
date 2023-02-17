import 'package:demo2/Hotline/hotline_detail.dart';
import 'package:demo2/Hotline/hotline_model.dart';
import 'package:flutter/material.dart';

class HotlineListTile extends StatefulWidget {
  HotlineListTile(this.data, {Key? key}) : super(key: key);
  Hotline data;

  @override
  State<HotlineListTile> createState() => _HotlineListTileState();
}

class _HotlineListTileState extends State<HotlineListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HotlineDetailsScreen(widget.data),
              ));
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 20.0),
          padding: EdgeInsets.all(12.0),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(26.0),
          ),
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Hero(
                  tag: "${widget.data.name}",
                  child: Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(widget.data.urlToImage!),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                  flex: 10,
                  child: Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.data.name!,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
