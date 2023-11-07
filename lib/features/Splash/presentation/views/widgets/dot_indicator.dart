import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 22 : 20,
      width: 20,
      decoration: isActive
          ? const BoxDecoration(
              color: kBlueColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            )
          : const ShapeDecoration(
              color: Color(0x02010680),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFF00067F)),
              ),
            ),
    );
  }
}
