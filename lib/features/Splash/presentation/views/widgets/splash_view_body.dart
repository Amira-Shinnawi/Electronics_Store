import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/core/utils/assets_data.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/core/widgets/custom_button.dart';
import 'package:electronics_store/features/Splash/presentation/views/widgets/title_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import 'custom_cart.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Stack(
          children: [
            Positioned(
              left: 77,
              top: 159,
              child: Image.asset(AssetsData.elecShope),
            ),
            const Positioned(
              left: 30,
              top: 257,
              child: CustomTilteApp(),
            ),
            Positioned(
              left: 129,
              top: 340,
              child: CustomButton(
                buttonName: 'Log In',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kAccountView);
                },
                width: 148,
                height: 74,
                backgroundColor: kButtonColor,
                style: Styles.textStyle32,
                borderRadius: BorderRadius.circular(90),
              ),
            ),
            Positioned(
              left: 129,
              top: 444,
              child: CustomButton(
                buttonName: 'Sign Up',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kOnBoarding);
                },
                width: 148,
                height: 74,
                backgroundColor: kButtonColor,
                style: Styles.textStyle32,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: SlideTransition(
                position: animation,
                child: CustomCart(
                  animation: animation,
                ),
              ),
            ),
            Positioned(
              left: 230,
              bottom: -130,
              child: Container(
                width: 317,
                height: 350,
                decoration: const ShapeDecoration(
                  color: kBlueColor,
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              left: -159,
              top: -175,
              child: Container(
                width: 317,
                height: 350,
                decoration: const ShapeDecoration(
                  color: kBlueColor,
                  shape: OvalBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initSlideAnimation() {
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
        .animate(controller);
    controller.forward();
  }
}
