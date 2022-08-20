class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: 'Kethy',
    avatar: 'assets/images/user/u4.jpg',
    time: '9 min ago',
    description: 'like Geekyshows'
  ),
  NotificationModel(
    name: 'Emma',
    avatar: 'assets/images/user/u5.jpg',
    time: '10 min ago',
    description: 'sent friend request'
  ),
  NotificationModel(
    name: 'Vikash',
    avatar: 'assets/images/user/u6.jpg',
    time: '1 hour ago',
    description: 'like Geekyshows'
  ),
];
