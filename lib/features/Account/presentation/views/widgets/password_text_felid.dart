import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PasswordTextFelid extends StatelessWidget {
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const PasswordTextFelid({
    Key? key,
    this.obscureText = false,
    this.suffixIcon, this.controller, this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator:validator ,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: 'Enter Password',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: kInter,
          color: Color(0xFF817A7A),
        ),
        contentPadding: const EdgeInsets.only(top: 10, bottom: 10, left: 13.55),
        border: builtOutLineBorder(),
        enabledBorder: builtOutLineBorder(),
        focusedBorder: builtOutLineBorder(),
        filled: true,
        fillColor: const Color(0xFFEEEEEE),
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder builtOutLineBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(90),
      ),
    );
  }
}
