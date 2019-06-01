import 'package:flutter/material.dart';
import 'package:flutter_app_final/navigation_pages/SecondTab.dart';


class MainFriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFF850DD),
      ),
      home: new FriendsListPage(),
    );
  }
}