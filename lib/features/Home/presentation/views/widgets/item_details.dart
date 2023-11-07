import 'package:electronics_store/core/utils/assets_data.dart';
import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Card/presentation/views/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: Image.asset(AssetsData.laptop),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'Realme C33',
          style: Styles.textStyle32KItim.copyWith(
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'EGP 5.338',
            style: Styles.textStyle32KItim.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const CustomRatingBar(),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
