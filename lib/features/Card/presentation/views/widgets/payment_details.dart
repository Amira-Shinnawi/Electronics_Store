import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/style.dart';
import 'card_text_felid.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment Details',
            style: TextStyle(
              fontSize: 24,
              fontFamily: kItim,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CardTextFelid(
            hintText: 'Enter name on card',
          ),
          const CardTextFelid(
            hintText: 'Card Number',
            suffixIcon: Icon(
              FontAwesomeIcons.ccVisa,
              color: kBlueColor,
              size: 30,
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: CardTextFelid(
                  hintText: 'Expiration',
                ),
              ),
              Expanded(
                child: CardTextFelid(
                  hintText: 'CVV Code',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            'By Clicking *Confirm Payment*  I agree to the companies term of services',
            style: Styles.textStyle24Inter.copyWith(
              fontSize: 15,
              color: const Color(0xFFA19E9E),
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          Row(
            children: [
              Container(
                width: 83,
                height: 42,
                decoration: ShapeDecoration(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 1, color: kBlueColor),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Back',
                    style: Styles.textStyle24Inter.copyWith(
                      fontSize: 15,
                      color: kButtonColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 220,
                height: 42,
                decoration: ShapeDecoration(
                  color: kBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Confirm Payment :EGP 8,587',
                    style: Styles.textStyle24Inter.copyWith(
                      fontSize: 15,
                      color: kButtonColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
