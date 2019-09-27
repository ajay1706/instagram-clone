import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context , index)=> index==0
      ? new SizedBox(
        child: InstaStories(),
      ):Column(),
      
    );
  }
}