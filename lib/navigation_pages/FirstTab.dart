import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';

File _image = null;
Center center = null;
bool booleanVisible = false;

class FirstTab extends StatefulWidget {
  @override
  FirstTabState createState() => new FirstTabState();
}

class FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    center = new Center(
        child: SizedBox(
      height: 240.0,
      width: 350.0,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: _image == null
                ? Text(
                    "Nicio imagine nu a fost selectată",
                    textAlign: TextAlign.center,
                  )
                : Image.file(_image),
          ),
        ],
      ),
    ));

    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    Future getImageFromGallery() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
      });
    }

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);

      setState(() {
        _image = image;
      });
    }

    RaisedButton uploadDillPhoto = new RaisedButton(
        elevation: 5.0,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        color: Colors.amber,
        child: new Text('Upload From Gallery',
            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
        onPressed: () => {getImageFromGallery(), booleanVisible = true});

    RaisedButton submitScreenshot = new RaisedButton(
      elevation: 5.0,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.green,
      child: new Text('Submit Photo',
          style: new TextStyle(fontSize: 20.0, color: Colors.white)),
      onPressed: () => {},
    );

    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      body: new Container(
        child: new Center(
          child: new Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                  child: SizedBox(
                height: 450.0,
                width: 350.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: _image == null
                          ? Text(
                              "Please add a Screenshot of your UI",
                              textAlign: TextAlign.center,
                            )
                          : Image.file(_image),
                    ),
                  ],
                ),
              )),
              uploadDillPhoto,
              Visibility(
                child: submitScreenshot,
                visible: booleanVisible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
