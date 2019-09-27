import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.14,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 10, 8, 16),
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
                                  image: NetworkImage(
                                      "https://avatars3.githubusercontent.com/u/20722807?s=460&v=4"),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "droid_aj",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://avatars3.githubusercontent.com/u/20722807?s=460&v=4,",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.heart),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            FontAwesomeIcons.paperPlane,
                          ),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by tweetyy_spark and 200 others",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(  
                            fit: BoxFit.fill,
                            image: NetworkImage("https://avatars3.githubusercontent.com/u/20722807?s=460&v=4",
                            )
                          )
                        ),
                      
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(  
                            border: InputBorder.none,
                            hintText: "Add a comment ...",
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("1 Day Ago", style:TextStyle(color: Colors.grey)),
                )



              ],
            ),
    );
  }
}
