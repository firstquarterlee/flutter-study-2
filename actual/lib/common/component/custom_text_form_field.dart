import 'package:flutter/material.dart';
import 'package:actual/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    required this.onChanged,
    this.autofocus = false,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      ),
    );//테두리있는보더

    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obscureText,//비밀번호 입력할때만 사용
      autofocus: autofocus,
      onChanged:  onChanged,//값이 바뀔 때마다 실행되는 콜백이다.
      decoration: InputDecoration(//이러면 인풋에 패딩느낌나게 할 수 있음
        contentPadding: EdgeInsets.all(20),
        hintText: hintText, //힌트 텍스트
        errorText: errorText, //틀리게 적으면 에러 알려줌
        hintStyle: TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        fillColor: INPUT_BG_COLOR,
        //false - 배경색 없음
        //true - 배경색 있음
        filled: true,
        border: baseBorder,//모든 Input 상태의 기본 스타일 세팅
        enabledBorder: baseBorder,//선택되지 않을때 활성화(글자쓸수있는..)되는 것임
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(//이런식의 copyWith를 많이 쓴다.
            color: PRIMARY_COLOR,
          ),
        ),
      ),
    );
  }
}
