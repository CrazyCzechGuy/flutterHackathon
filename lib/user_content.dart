import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_final/navigation_pages/FirstTab.dart';
import 'package:flutter_app_final/navigation_pages/SecondTab.dart';
import 'package:flutter_app_final/navigation_pages/ThirdTab.dart';
import 'package:flutter_app_final/navigation_pages/addCodeLinkOrPicture.dart';
import 'package:flutter_app_final/navigation_pages/mainUsers.dart';
import 'package:flutter_app_final/navigation_pages/viewSubmissions.dart';

class UserPlatform extends StatefulWidget {
  @override
  UserPlatformState createState() => new UserPlatformState();
}

// SingleTickerProviderStateMixin is used for animation
class UserPlatformState extends State<UserPlatform>
    with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Set the TabBar view as the body of the Scaffold
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new CoreOrUI(), new MainFriendList(), new AccountBottomIconScreen()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.add_circle),
            ),
            new Tab(
              icon: new Icon(Icons.apps),
            ),
            new Tab(
              icon: new Icon(Icons.settings),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
