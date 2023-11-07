import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/assets_data.dart';
import 'package:electronics_store/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/style.dart';
import 'custom_rating_bar.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          Image.asset(AssetsData.phone),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Realme C33',
                    style: Styles.textStyle24Inter.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'EGP 5,338',
                  style: Styles.textStyle24Inter.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomRatingBar(),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CustomButton(
                        onPressed: () {
                          GoRouter.of(context).push(
                            AppRouter.kCard,
                          );
                        },
                        buttonName: 'ADD TO CART',
                        style: Styles.textStyle24Inter.copyWith(
                            fontSize: 15,
                            color: kBlueColor,
                            fontWeight: FontWeight.bold),
                        width: 125,
                        height: 40,
                        backgroundColor: kButtonColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
