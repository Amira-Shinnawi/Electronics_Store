import 'package:electronics_store/core/utils/style.dart';
import 'package:electronics_store/features/Card/presentation/views/widgets/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../Home/presentation/views/widgets/custom_app_bar.dart';
import 'card_list_view_item.dart';

class CardViewBody extends StatefulWidget {
  const CardViewBody({super.key});

  @override
  State<CardViewBody> createState() => _CardViewBodyState();
}

class _CardViewBodyState extends State<CardViewBody> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Center(
                child: Text(
                  'Your Card',
                  style: Styles.textStyle32KItim.copyWith(
                    fontSize: 40,
                    color: kBlueColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              const CardListViewItem(),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7.5),
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: kItim,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Radio(
                      value: "Credit Card",
                      activeColor: kButtonColor,
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      },
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.creditCard,
                    color: kBlueColor,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 43,
                  ),
                  Transform.scale(
                    scale: 1.3,
                    child: Radio(
                      value: "Paypal",
                      activeColor: kButtonColor,
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      },
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.ccPaypal,
                    color: kBlueColor,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 17.5,
              ),
              const PaymentDetails(),
            ],
          ),
        ),
      ],
    );
  }
}
