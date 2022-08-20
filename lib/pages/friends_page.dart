import 'package:facebook_ui_basic/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Friends',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.person),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        print('Person Clicked');
                      },
                      color: Colors.green,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: IconButton(
                      icon: Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        print('People Clicked');
                      },
                      color: Colors.redAccent,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendsData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(friendsData[i].avatar),
                  ),
                  title: Text(
                    friendsData[i].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      TextButton(
                        onPressed: () => print('Friend Add Request Sent'),
                        child: Text('Add Friend'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                          padding: EdgeInsets.all(10),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                      TextButton(
                        onPressed: () => print('Friend Remove'),
                        child: Text('Remove'),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            primary: Colors.white,
                            padding: EdgeInsets.all(10),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        )
      ],
    );
  }
}

