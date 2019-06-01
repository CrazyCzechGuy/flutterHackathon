import 'package:flutter/material.dart';

class AccountBottomIconScreen extends StatefulWidget {
  @override
  _AccountBottomIconScreenState createState() =>
      _AccountBottomIconScreenState();
}

class _AccountBottomIconScreenState extends State<AccountBottomIconScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: Text(
                'My Submitted Requests',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              )),
          _centerButtons(),
          _displayImages()
        ],
      ),
    );
  }

  Widget _post() {
    return new GestureDetector(
      child: new Column(
        children: <Widget>[
          new Text(
            "72",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 3.0),
            child: new Text(
              "posts",
              style: new TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _centerButtons() {
    return Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.grid_on,
                    size: 30.0,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: new Icon(
                    Icons.favorite,
                    size: 30.0,
                  ),
                  onPressed: () {}),
            ],
          ),
          new Container(
            height: 0.5,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  Widget _displayImages() {
    return Flexible(
        child: new Container(
      child: new GridView.builder(
          itemCount: 1,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              margin: EdgeInsets.all(2.0),
              color: Colors.grey,
              child: new Image.asset("images/register.jpg"),

            );
          }),
    ));
  }
}
