import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {

  double _width = 50;
  double _height = 50;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),

      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: color,

          duration: Duration(seconds: 1),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final random = Random();
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256), 1);
          });
        },
      ),
    );
  }
}

