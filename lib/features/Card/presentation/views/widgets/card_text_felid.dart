import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CardTextFelid extends StatelessWidget {
  const CardTextFelid({super.key, required this.hintText, this.suffixIcon});
  final String hintText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.textStyle24Inter.copyWith(
          fontSize: 15,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
