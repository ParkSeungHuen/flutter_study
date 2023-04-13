import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key? key}) : super(key: key);

  @override
  State<MyFormValidation> createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>(); // 그냥 GlobalKey를 선언할 경우 클래스의 고유 클래스 키가 나옴. <FormState> 제네릭을 이용하여 폼스테이트의 고유 키 생성

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormValidation'),
      ),

      body: Form( // 폼 내부에 폼 생성시 폼스테이트를 리턴해줌.
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return '공백은 허용되지 않습니다.';
                }
              }, // validatior에 값이 들어오면

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                    }
                  },
                  child: Text('Press')),
            )
          ],
        ),
      )
    );
  }
}
