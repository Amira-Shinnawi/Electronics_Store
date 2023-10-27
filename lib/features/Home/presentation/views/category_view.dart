import 'package:electronics_store/features/Home/presentation/views/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../constataints.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: kPadding,
        child: CategoryViewBody(),
      ),
    );
  }
}
