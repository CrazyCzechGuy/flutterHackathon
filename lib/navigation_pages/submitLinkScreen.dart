import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final nameController = TextEditingController();

class SubmitLinkScreen extends StatefulWidget {
  @override
  SubmitLinkScreenState createState() => new SubmitLinkScreenState();
}

class SubmitLinkScreenState extends State<SubmitLinkScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(
                  top: 50.0, bottom: 15.0, left: 10.0, right: 10.0),
              child: new Center(
                child: Text(
                  'Input the link of Your Flutter Code',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Container(
                padding: EdgeInsets.all(16.0),
                child: new Form(
                  child: new ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      _showLinkName(),
                    ],
                  ),
                )),
            new RaisedButton(
              elevation: 5.0,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.green,
              child: new Text('Submit Code Link',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () => {},
            ),
          ],
        ),
      ],
    ));
  }

  Widget _showLinkName() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      child: new TextFormField(
        controller: nameController,
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Code Link',
        ),
      ),
    );
  }
}
