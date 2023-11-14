import 'package:electronics_store/core/utils/app_router.dart';
import 'package:electronics_store/features/Home/data/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

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
            height: 118,
            decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const Spacer(),
                Image.network(
                  'http://10.0.2.2/elecshop/uploads/categoryPicture/${productModel.productImage}',
                  width: 89,
                  height: 69,
                ),
                const Spacer(),
                Text(
                  productModel.productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  productModel.productPrice,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
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
