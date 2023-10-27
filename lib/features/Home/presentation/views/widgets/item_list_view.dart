import 'package:flutter/material.dart';

import 'custom_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 33, top: 12.5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 40,
        ),
        itemCount: 13,
        itemBuilder: (context, index) {
          return const CustomItem();
        },
      ),
    );
  }
}
