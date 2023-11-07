import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets_data.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSearchCategory);
      },
      child: Stack(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Image.asset(
                  AssetsData.laptop,
                  width: 100,
                  height: 90,
                ),
                const Text(
                  'Dell Latitude',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '15000 LE ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
