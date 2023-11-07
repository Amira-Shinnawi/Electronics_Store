import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/category_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: kBlueColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Details',
          style: Styles.textStyle24Inter.copyWith(
            color: kBlueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchCategory);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
              color: kBlueColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kCard);
              },
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                size: 25,
                color: kBlueColor,
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body:const CategoryViewBody(),
    );
  }
}
