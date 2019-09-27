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

final stories = Expanded(
  child: Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context , index) => Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(  
              shape: BoxShape.circle,
              image: DecorationImage(  
                fit: BoxFit.fill,
                image: NetworkImage("https://avatars3.githubusercontent.com/u/20722807?s=460&v=4")
              )
            ),
            margin: EdgeInsets.symmetric(horizontal: 6.0),
          ),
         index == 0?Positioned(
           right: 10,
           child: CircleAvatar(
             backgroundColor: Colors.blueAccent,
             radius: 10.0,
             child: Icon(Icons.add,size: 14.0,color: Colors.white,),
           ),
         ) : Container()
        ],
      ),
    ),
  ),
);




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          topText,
          stories,

        ],
      ),
      
    );
  }
}