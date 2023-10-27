import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AssetsData.logo,
          width: 96,
          height: 31.30,
        ),
        Image.asset(
          AssetsData.line8,
        ),
        const SizedBox(
          height: 3.5,
        ),
        Image.asset(
          AssetsData.line9,
        ),
      ],
    );
  }
}