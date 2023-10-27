import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Top',
                style: Styles.textStyle24,
              ),
              Text(
                'Brands',
                style: Styles.textStyle24.copyWith(
                  fontSize: 44,
                ),
              ),
              const Text(
                'Lowest',
                style: Styles.textStyle24,
              ),
              Text(
                'Price',
                style: Styles.textStyle24.copyWith(
                  fontSize: 44,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'WIDE RANGE OF ELECTRONICS',
          textAlign: TextAlign.center,
          style: Styles.textStyle24.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
