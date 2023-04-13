import 'dart:math';
import 'package:studyflutter/study/MyAnimatedContainer.dart';

import 'package:flutter/material.dart';
import 'package:studyflutter/study/MyAnimatedOptical.dart';
import 'package:studyflutter/study/MyFormValidation.dart';
import 'package:studyflutter/study/MyOrientationBuilder.dart';
import 'package:studyflutter/study/MySnackBar.dart';
import 'package:studyflutter/study/MySwipeToDismiss.dart';
import 'package:studyflutter/study/MyTabController.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellowAccent
      ),
      initialRoute: '/',
      routes: {
        '/MyAnimatedContainer': (context) => MyAnimatedContainer(),
        '/MyAnimatedOptical': (context) => MyAnimatedOptical(),
        '/MySnackBar': (context) => MySnackBar(),
        '/MyOrientationBuilder': (context) => MyOrientationBuilder(),
        '/MyTapController': (context) => MyTapController(),
        '/MyFormValidation': (context) => MyFormValidation(),
        '/MySwipeToDismiss': (context) => MySwipeToDismiss(),

      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          ListTile(
            title: Text("AnimatedContainer"),
            onTap: () {
              Navigator.pushNamed(context, '/MyAnimatedContainer',);
            },
          ),

          ListTile(
            title: Text("AnimatedOptical"),
            onTap: () {
              Navigator.pushNamed(context, '/MyAnimatedOptical',);
            },
          ),

          ListTile(
            title: Text("SnackBar"),
            onTap: () {
              Navigator.pushNamed(context, '/MySnackBar',);
            },
          ),

          ListTile(
            title: Text("OrientationBuilder"),
            onTap: () {
              Navigator.pushNamed(context, '/MyOrientationBuilder',);
            },
          ),

          ListTile(
            title: Text("TabController"),
            onTap: () {
              Navigator.pushNamed(context, '/MyTapController',);
            },
          ),

          ListTile(
            title: Text("FormValidation"),
            onTap: () {
              Navigator.pushNamed(context, '/MyFormValidation',);
            },
          ),

          ListTile(
            title: Text("SwipeToDismiss"),
            onTap: () {
              Navigator.pushNamed(context, '/MySwipeToDismiss',);
            },
          ),
        ],
      ),
    );
  }
}



