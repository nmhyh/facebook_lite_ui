import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: 'Kethy',
    time: '23:05',
    avatar: 'assets/images/user/u7.jpg',
    status: MessageModel.statusOffline
  ),
  MessageModel(
    name: 'Emma',
    time: '23:01',
    avatar: 'assets/images/user/u2.jpg',
    status: MessageModel.statusOffline
  ),
  MessageModel(
    name: 'Sameer',
    time: '22:50',
    avatar: 'assets/images/user/u4.jpg',
    status: MessageModel.statusOffline
  ),
  MessageModel(
    name: 'Khushi',
    time: '22:48',
    avatar: 'assets/images/user/u9.jpg',
    status: MessageModel.statusOffline
  ),
  MessageModel(
    name: 'Vikash',
    time: '23:20',
    avatar: 'assets/images/user/u6.jpg',
    status: MessageModel.statusOnline
  ),
  MessageModel(
    name: 'Ranjan',
    time: '14:23',
    avatar: 'assets/images/user/u3.jpg',
    status: MessageModel.statusOffline
  ),
  MessageModel(
    name: 'Rahul',
    time: '10:20',
    avatar: 'assets/images/user/u1.jpg',
    status: MessageModel.statusOnline
  ),
];
