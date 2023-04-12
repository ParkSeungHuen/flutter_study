import 'dart:math';
import 'package:studyflutter/study/MyAnimatedContainer.dart';

import 'package:flutter/material.dart';
import 'package:studyflutter/study/MyAnimatedOptical.dart';
import 'package:studyflutter/study/MySnackBar.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/MyAnimatedContainer': (context) => MyAnimatedContainer(),
        '/MyAnimatedOptical': (context) => MyAnimatedOptical(),
        '/MySnackBar': (context) => MySnackBar(),


      },
      home: Home(),
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List"),
      ),
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
          )
        ],
      ),
    );
  }
}



