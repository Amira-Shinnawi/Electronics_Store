import 'package:electronics_store/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CardViewBody extends StatelessWidget {
  const CardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
