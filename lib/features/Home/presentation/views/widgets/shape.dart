import 'package:electronics_store/constants.dart';
import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key,
    required this.textShape,
  });
  final String textShape;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Container(
        width: 177,
        height: 45,
        decoration: const ShapeDecoration(
          color: kBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        child: Center(
          child: Text(
            textShape,
            style: const TextStyle(
              color: Color(0xFFFFFBFB),
              fontSize: 20,
              fontFamily: kItim,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
