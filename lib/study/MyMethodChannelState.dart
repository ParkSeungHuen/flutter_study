import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMethodChannel extends StatefulWidget {
  const MyMethodChannel({Key? key}) : super(key: key);

  @override
  State<MyMethodChannel> createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  static const platform = const MethodChannel('example.com/value'); // 네이티브쪽에서 이름을 맞춰줘야함
  String _value = 'null';

  Future<void> _getNativeValue() async {
    String value;
    try {
      value = await platform.invokeMethod('getValue'); // 비동기로 동작하기 떄문에 await, getValue라는 메서드 실행
    }on PlatformException catch (e) {
      value = '네이티브 코드 실행 에러 : ${e.message}';
    }

    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MethodChannel'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text('${_value}'),
          TextButton(
              onPressed: () {
                _getNativeValue();
              },
              child: Text('네이티브 값 얻기')
          )
        ],
      )
    );
  }
}

