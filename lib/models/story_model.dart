import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
      onTap: () => print('Priti Story Clicked'),
      image: 'assets/images/story/s1.jpg',
      userName: 'Priti'),
  StoryModel(
      onTap: () => print('Sonali Story Clicked'),
      image: 'assets/images/story/s2.jpg',
      userName: 'Sonali'),
  StoryModel(
      onTap: () => print('Sejal Story Clicked'),
      image: 'assets/images/story/s3.jpg',
      userName: 'Sejal'),
  StoryModel(
      onTap: () => print('Jack Story Clicked'),
      image: 'assets/images/story/s4.jpg',
      userName: 'Jack'),
  StoryModel(
      onTap: () => print('Pragati Story Clicked'),
      image: 'assets/images/story/s5.jpg',
      userName: 'Pragati'),
];
