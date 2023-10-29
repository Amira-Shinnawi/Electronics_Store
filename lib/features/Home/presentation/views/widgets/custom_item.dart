import 'package:electronics_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCategoryView);
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: 117,
            height: 108,
            decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Image.asset(
                  AssetsData.laptop,
                  width: 89,
                  height: 69,
                ),
                const Text(
                  'Dell Latitude',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '15000LE ',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: kItim,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 16,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -10,
            left: -5,
            child: Image.asset(
              AssetsData.newLogo,
              height: 29,
              width: 29,
            ),
          ),
        ],
      ),
    );
  }
}
