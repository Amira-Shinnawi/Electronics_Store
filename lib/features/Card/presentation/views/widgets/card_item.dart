import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            AssetsData.phone,
            width: 81,
            height: 97,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          'Realme C33',
          style: TextStyle(
            fontSize: 14,
            fontFamily: kItim,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Quantity 1',
          style: TextStyle(
            fontSize: 14,
            fontFamily: kItim,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Price EGP 5,338',
          style: TextStyle(
            fontSize: 14,
            fontFamily: kItim,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
