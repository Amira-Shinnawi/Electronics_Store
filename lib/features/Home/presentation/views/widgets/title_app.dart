import 'package:electronics_store/features/Splash/presentation/views/widgets/title_app.dart';
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
        const Padding(
          padding: EdgeInsets.only(top: 19),
          child: CustomTilteApp(),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'WIDE RANGE OF ELECTRONICS',
          textAlign: TextAlign.center,
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
