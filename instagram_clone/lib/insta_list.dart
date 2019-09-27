import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context , index)=> index==0
      ? new SizedBox(
        child: InstaStories(),
        height: deviceSize.height *0.15,
      ):Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(  
                          fit: BoxFit.fill,
                        image: NetworkImage("https://avatars3.githubusercontent.com/u/20722807?s=460&v=4"),

                        )

                        
                      ),
                    ),
                
                SizedBox(
                  width: 15,
                ),
                Text("droid_aj",
                style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                IconButton(icon: Icon(Icons.more_vert),
                onPressed: (){},)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.network("https://avatars3.githubusercontent.com/u/20722807?s=460&v=4"),
          )
        ],
      ),
      
    );
  }
}