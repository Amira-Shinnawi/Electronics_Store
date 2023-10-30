import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/style.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.height,
    required this.width,
  });
  final String title, image;
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AssetsData.elecShope,
          height: 44.66,
          width: 137,
        ),
        const SizedBox(
          height: 66.44,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 36,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 66,
        ),
        Center(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
