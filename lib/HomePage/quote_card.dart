import 'package:demo2/HomePage/quote_model.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatefulWidget {
  QuoteCard(this.data, {Key? key}) : super(key: key);
  Quote data;

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(widget.data.urlToImage!),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.quote!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.data.author!,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
