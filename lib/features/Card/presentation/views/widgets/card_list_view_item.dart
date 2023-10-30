import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class CardListViewItem extends StatelessWidget {
  const CardListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          AssetsData.phone,
                          width: 81,
                          height: 97,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        'Realme C33',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: kItim,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Quantity 1',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: kItim,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Price EGP 5,338',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: kItim,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
