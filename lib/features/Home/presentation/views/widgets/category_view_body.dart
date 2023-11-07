import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'category_item_section.dart';
import 'item_details.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const ItemDetails(),
              CustomButton(
                buttonName: 'ADD TO CART',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kCard);
                },
                style: Styles.textStyle32KItim.copyWith(
                  fontSize: 20,
                  color: kBlueColor,
                  fontWeight: FontWeight.bold,
                ),
                width: 215,
                height: 42,
                backgroundColor: kButtonColor,
              ),
              const SizedBox(
                height: 80,
              ),
              const CategoryItemSection(),
            ],
          ),
        ),
      ],
    );
  }
}
