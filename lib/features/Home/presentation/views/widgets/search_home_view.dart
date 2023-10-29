import 'package:electronics_store/core/widgets/custom_button.dart';
import 'package:electronics_store/core/widgets/custom_text_felid.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/style.dart';

class SearchHomeView extends StatelessWidget {
  const SearchHomeView({
    super.key,
    this.suffixIcon,
  });
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.66),
      child: Row(
        children: [
          SizedBox(
              width: 280.74,
              height: 36,
              child: CustomTextFelid(
                hinText: 'Search for brand or product',
                suffixIcon: Container(
                  width: 70.67,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(6, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: CustomButton(
                      buttonName: 'Search',
                      style: Styles.textStyle32.copyWith(
                        color: kBlueColor,
                        fontSize: 17,
                      ),
                      width: 70.67,
                      height: 36,
                      backgroundColor: kButtonColor),
                ),
              )),
        ],
      ),
    );
  }
}
