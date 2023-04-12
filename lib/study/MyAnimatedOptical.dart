import 'package:flutter/material.dart';

class MyAnimatedOptical extends StatefulWidget {
  const MyAnimatedOptical({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOptical> createState() => _MyAnimatedOpticalState();
}

class _MyAnimatedOpticalState extends State<MyAnimatedOptical> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AnimatedOptical"),
      ),

      body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0,
          duration: Duration(seconds: 1), // 시간을 0.5초로 하고싶다 - MilliSecond사용
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
      ),

    );
  }
}
