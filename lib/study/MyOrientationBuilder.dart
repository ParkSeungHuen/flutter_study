import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatefulWidget {
  const MyOrientationBuilder({Key? key}) : super(key: key);

  @override
  State<MyOrientationBuilder> createState() => _MyOrientationBuilderState();
}

class _MyOrientationBuilderState extends State<MyOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OrientationBuilder"),
          backgroundColor: Colors.blue,
        ),

        body: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return GridView.count( // 가로, 세로 했을 경우 배열 바꾸기
                  crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
                  children: List.generate(50, (position) {
                    return Center(
                      child: Text('item ${position}'),
                    );
                  })

              );
            }
        )
    );
  }
}
