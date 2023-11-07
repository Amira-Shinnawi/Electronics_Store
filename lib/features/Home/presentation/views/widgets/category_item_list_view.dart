import 'package:electronics_store/features/Home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CategoryItem(),
            );
          }),
    );
  }
}
