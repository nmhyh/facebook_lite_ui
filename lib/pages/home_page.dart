import 'package:facebook_ui_basic/widgets/home/menu_bar.dart';
import 'package:facebook_ui_basic/widgets/home/post.dart';
import 'package:facebook_ui_basic/widgets/home/post_bar.dart';
import 'package:facebook_ui_basic/widgets/home/story_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        children: [
          PostBar(),
          Divider(thickness: 1, color: Colors.black12,),
          MenuBar(),
          Divider(thickness: 1, color: Colors.black12,),
          StoryBar(),
          Divider(thickness: 1, color: Colors.black12,),
          Post(),
        ],
      ),
    );
  }
}

