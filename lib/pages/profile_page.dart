import 'package:facebook_ui_basic/widgets/home/menu_bar.dart';
import 'package:facebook_ui_basic/widgets/home/post.dart';
import 'package:facebook_ui_basic/widgets/home/post_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                onPressed: () => {
                  Navigator.of(context).pop()
                },
                icon: Icon(Icons.arrow_back),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.black,
              ),
              Text(
                'Sonam Sharma',
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: EdgeInsets.only(top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/post/bird.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: new Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                            image: AssetImage('assets/images/user/sonam.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Sonam Sharma',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: [
                        Icon(Icons.add_circle),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Text('Add to Story'),
                      ],
                    )
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: [
                        Icon(Icons.edit, color: Colors.black,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Text('Edit Profile', style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400]
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.more_horiz)
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.book),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                      Text(
                        'Studied at IGNOU - The People\'s University',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.gamepad),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                      Text(
                        'Single',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friends'),
                  TextButton(
                    onPressed: () => {},
                    child: Text('Find Friends'),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            PostBar(),
            MenuBar(),
            Post(),
          ],
        ),
      ),
    );
  }
}
