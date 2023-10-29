import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.onPressed,
    required this.width,
    required this.height,
    this.style,
    required this.backgroundColor,
    this.borderRadius,
  });
  final String buttonName;
  final void Function()? onPressed;
  final double width, height;
  final TextStyle? style;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(6, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  90,
                ),
          ),
        ),
        child: Text(
          buttonName,
          style: style,
        ),
      ),
    );
  }
}
