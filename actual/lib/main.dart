import 'package:actual/common/component/custom_text_form_field.dart';
import 'package:actual/user/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    _App(),
  );
}

class _App extends StatelessWidget {
  //_넣는 이유 : private 변수, 값 선언할 때 넣는다.
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    //최상위에는 MaterialApp은 꼭 있어야하니까! 적어주고 메인에 넣어줬음ㅋ
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      debugShowCheckedModeBanner: false, //debug띠 삭제
      home: LoginScreen(),
    );
  }
}
