import 'package:flutter/material.dart';

import '../../../../../constataints.dart';

class CustomTextFelid extends StatelessWidget {
  const CustomTextFelid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.66),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            width: 280.74,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for brand or product',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: kInter,
                  color: Color(0xFF817A7A),
                ),
                contentPadding:
                    const EdgeInsets.only(top: 10, bottom: 10, left: 13.55),
                border: builtOutLineBorder(),
                enabledBorder: builtOutLineBorder(),
                focusedBorder: builtOutLineBorder(),
                filled: true,
                fillColor: const Color(0xFFEEEEEE),
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
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        color: kBlueColor,
                        fontSize: 17,
                        fontFamily: kItim,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder builtOutLineBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(90),
      ),
    );
  }
}
