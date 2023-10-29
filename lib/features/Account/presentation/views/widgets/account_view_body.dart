import 'package:electronics_store/features/Account/presentation/views/widgets/action_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            AssetsData.elecShope,
            width: 137,
            height: 44.66,
          ),
          const SizedBox(
            height: 12.34,
          ),
          Container(
            width: 303,
            height: 700,
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(41),
            ),
            child: const ActionButton(),
          ),
        ],
      ),
    );
  }
}
