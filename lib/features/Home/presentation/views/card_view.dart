import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/card_view_body.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: kPadding,
      child: CardViewBody(),
    ));
  }
}
