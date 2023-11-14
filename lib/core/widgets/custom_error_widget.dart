import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle24Inter.copyWith(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}