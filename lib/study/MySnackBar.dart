import 'package:flutter/material.dart';
// 스낵바는 구현이 달라졌음.. 나중에 추가 공부
class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: TextButton(
          onPressed: () {
            final snackBar = SnackBar(
                content: Text('나는 스낵바')
            );

          },
          child: Text("SnackBar"),
        ),
      )
    );
  }
}
