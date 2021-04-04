import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileCard(),
            ],
          ),
        ),
      ),
    ));
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/headshot.jpg'),
            radius: 50.0,
          ),
          Text(
            'Kevin Williams',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontFamily: 'DelaGothicOne',
            ),
          ),
          Text(
            '.net developer',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white70,
              fontFamily: 'SourceSansPro',
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('502-555-1212',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('kevin.williams@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
