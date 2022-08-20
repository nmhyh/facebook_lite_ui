import 'package:flutter/cupertino.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/sonam.jpg',
    name: 'Sonam Sharma',
    time: 'Just Now',
    moreOnPressed: () => print('More Clicked'),
    postTitle: 'This is my new profile picture',
    postImage: 'assets/images/user/sonam.jpg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/u1.jpg',
    name: 'Submit',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle: 'There are many variations of passages of Lorem ipsum'
      'dolor sit amet consectetuer adipiscing elit',
    postImage: 'assets/images/post/bird.jpg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('Avatar Clicked'),
    avatarImage: 'assets/images/user/u8.jpg',
    name: 'Vincenzo Cassano',
    time: '8 min ago',
    moreOnPressed: () => print('More Clicked'),
    postTitle: 'All the lorem ipsum dolor sit amet consectetuer adipiscing elit',
    postImage: 'assets/images/post/mafia.jpg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
