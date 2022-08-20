import 'package:facebook_ui_basic/pages/friends_page.dart';
import 'package:facebook_ui_basic/pages/home_page.dart';
import 'package:facebook_ui_basic/pages/market_page.dart';
import 'package:facebook_ui_basic/pages/message_page.dart';
import 'package:facebook_ui_basic/pages/notification_page.dart';
import 'package:facebook_ui_basic/pages/video_page.dart';
import 'package:facebook_ui_basic/widgets/home/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> topTabs = <Tab>[
    new Tab(icon: Icon(Icons.home_outlined)),
    new Tab(icon: Icon(Icons.people_outlined)),
    new Tab(icon: Icon(Icons.message_outlined)),
    new Tab(icon: Badge(
      position: BadgePosition.topEnd(top: -20, end: -5),
      badgeContent: Text(
        '3',
        style: TextStyle(
          fontSize: 18, color: Colors.white,
        ),
      ),
      child: Icon(Icons.notifications_outlined)
    )),
    new Tab(icon: Icon(Icons.video_library_outlined)),
    new Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: topTabs.length, initialIndex: 0, vsync: this
    )..addListener(() {
      setState(() { });
    });
  }

  Future<bool> _onWillPop() async {
    print('on will pop');
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(milliseconds: 200), () {
      print('Set index');
      _tabController?.index = 0;
    });

    print('Return');
    return _tabController?.index == 0;
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'facebook',
            style: TextStyle(
              fontFamily: 'Klavika',
              fontSize: 34,
              color: Colors.blue[700],
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              child: IconButton(
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print('Search Button Clicked');
                },
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: topTabs,
            indicatorColor: Colors.black,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage(),
          ],
        ),
      ),
    );
  }
}
