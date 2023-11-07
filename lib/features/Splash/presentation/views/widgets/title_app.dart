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
        Text(
          'Top',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 24,
          ),
        ),
        Text(
          'Brands',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 40,
          ),
        ),
        Text(
          'Lowest',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 24,
          ),
        ),
        Text(
          'Price',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
