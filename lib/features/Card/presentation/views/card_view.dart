import 'package:electronics_store/features/Card/presentation/views/widgets/card_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: CardViewBody(),
        ),
      ),
    );
  }
}
