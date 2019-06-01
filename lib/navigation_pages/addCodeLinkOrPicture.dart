import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_final/navigation_pages/FirstTab.dart';
import 'package:flutter_app_final/navigation_pages/submitLinkScreen.dart';

class CoreOrUI extends StatefulWidget {
  @override
  CoreOrUIState createState() => new CoreOrUIState();
}

class CoreOrUIState extends State<CoreOrUI> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 100.0, bottom: 15.0),
                child: new Center(
                  child: Text(
                    'Code Link or a Screen from UI',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left:10.0, right:10.0, top: 100.0 ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(
                        Icons.bug_report,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubmitLinkScreen()),
                          ),
                    ),
                    new IconButton(
                      icon: new Icon(
                        Icons.picture_in_picture,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstTab()),
                      ),                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
