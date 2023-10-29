import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomTilteApp extends StatelessWidget {
  const CustomTilteApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Top',
          style: Styles.textStyle24,
        ),
        Text(
          'Brands',
          style: Styles.textStyle24.copyWith(
            fontSize: 40,
          ),
        ),
        const Text(
          'Lowest',
          style: Styles.textStyle24,
        ),
        Text(
          'Price',
          style: Styles.textStyle24.copyWith(
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
