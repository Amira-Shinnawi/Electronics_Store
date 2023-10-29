import 'package:electronics_store/features/Splash/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 64, left: 10, right: 10),
          child: OnBoardingViewBody(),
        ),
      ),
    );
  }
}
