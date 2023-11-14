import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFelid extends StatelessWidget {
  const CustomTextFelid({
    super.key,
    this.suffixIcon,
    required this.hinText,
    this.controller,
    this.validator,
    this.onChanged,
  });
  final Widget? suffixIcon;
  final String hinText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hinText,
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
