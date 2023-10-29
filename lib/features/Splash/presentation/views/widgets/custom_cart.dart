import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
    required this.animation,
  });
  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: ((context, child) {
        return SizedBox(
          width: 197,
          height: 252,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 64,
                child: Container(
                  width: 197,
                  height: 188,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.cart2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 0,
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.cart1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
