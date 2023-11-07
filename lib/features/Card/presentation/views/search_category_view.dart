import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Card/presentation/views/widgets/search_category_body.dart';
import 'package:flutter/material.dart';

class SearchCategoryView extends StatelessWidget {
  const SearchCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child: SearchCategoryBody(),
        ),
      ),
    );
  }
}
