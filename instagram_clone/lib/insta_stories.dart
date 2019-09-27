import 'package:flutter/material.dart';

class InstaStories
 extends StatelessWidget {
final topText = Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Text("Stories",
  style:TextStyle(fontWeight: FontWeight.bold)),

  Row(
    children: <Widget>[
      Icon(Icons.play_arrow),
      Text("Watch All",style: TextStyle(fontWeight: FontWeight.bold),)
    ],
  )
],
);




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          topText,
          // stories,

        ],
      ),
      
    );
  }
}