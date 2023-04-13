import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  const MySwipeToDismiss({Key? key}) : super(key: key);

  @override
  State<MySwipeToDismiss> createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {

  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwipeToDismiss'),
      ),

      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              direction: DismissDirection.startToEnd, // 방향지정
              onDismissed: (direction){
                setState(() {
                  // if (direction == DismissDirection.startToEnd) 등등 지우는 방향에 조건을 걸어 다양한 응용 가능
                  items.removeAt(index); // 실제 리스트에서 삭제하기
                });
              },
              child: ListTile(
                  title: Text('${items[index]}'),
                ),
              key: Key(item),
            );
          }
      ),

    );
  }
}
