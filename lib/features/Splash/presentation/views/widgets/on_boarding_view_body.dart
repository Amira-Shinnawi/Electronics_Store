import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/core/utils/assets_data.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../models/onboard.dart';
import 'dot_indicator.dart';
import 'on_boarding_content.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;

  int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _pageIndex = value;
              });
            },
            itemCount: onBoardingList.length,
            itemBuilder: (context, index) {
              return OnBoardingContent(
                title: onBoardingList[index].title,
                image: onBoardingList[index].image,
                height: onBoardingList[index].height,
                width: onBoardingList[index].width,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 3.5),
                child: DotIndicator(
                  isActive: index == _pageIndex,
                ),
              ),
            ),
          ],
        ),
        if (_pageIndex == onBoardingList.length - 1)
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8),
              child: CustomButton(
                buttonName: 'Next',
                style: Styles.textStyle24Inter.copyWith(color: kPrimaryColor),
                width: 130,
                height: 50,
                backgroundColor: kBlueColor,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kAccountView);
                },
              ),
            ),
          ),
      ],
    );
  }
}

final List<OnBoarding> onBoardingList = [
  OnBoarding(
    title: 'Laptops at the lowest prices and highest quality',
    image: AssetsData.image1,
    width: 337,
    height: 150,
  ),
  OnBoarding(
    title: 'The latest types of mobile phones at the lowest prices',
    image: AssetsData.image2,
    width: 225,
    height: 225,
  ),
  OnBoarding(
    title:
        'The latest shapes of headphones and the latest colors at the lowest prices',
    image: AssetsData.image3,
    width: 163,
    height: 232,
  ),
];
