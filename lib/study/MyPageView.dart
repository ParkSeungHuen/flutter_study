import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car),),
                Tab(icon: Icon(Icons.directions_bike),),
                Tab(icon: Icon(Icons.directions_train),),
              ],
            ),
            title: Text("PageView"),
          ),

          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_train),
            ],
          ),
        )
    );

  }
}
