import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTapController extends StatefulWidget {
  const MyTapController({Key? key}) : super(key: key);

  @override
  State<MyTapController> createState() => _MyTapControllerState();
}

class _MyTapControllerState extends State<MyTapController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
            title: Text("TapController"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.add), text: 'Tab1',),
              Tab(icon: Icon(Icons.add), text: 'Tab2',),
              Tab(icon: Icon(Icons.add), text: 'Tab3',),
            ],),
          ),
          body:TabBarView(
            children: [
              Icon(Icons.account_circle_rounded), // 아이콘은 무조건 센터 기본값
              Text('Tab2'),
              Text('Tab3')
            ],
          )
        ),
      length: 3,
    );
  }
}
