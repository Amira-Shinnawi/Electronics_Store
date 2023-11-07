import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Home/presentation/views/widgets/category_item_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CategoryItemSection extends StatelessWidget {
  const CategoryItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'YOU MAY ALSO LIKE',
            style: Styles.textStyle32KItim.copyWith(
              fontSize: 20,
              color: kBlueColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const CategoryItemListView(),
        ],
      ),
    );
  }
}
