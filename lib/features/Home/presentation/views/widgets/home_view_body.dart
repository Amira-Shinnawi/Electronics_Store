import 'package:electronics_store/features/Home/presentation/views/widgets/title_app.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'item_list_view.dart';
import 'search_home_view.dart';
import 'shape.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const TitleApp(),
          const SizedBox(
            height: 39,
          ),
          SearchHomeView(),
          const SizedBox(
            height: 31,
          ),
          const Shape(
            textShape: 'New Arrival',
          ),
          const SizedBox(
            height: 25,
          ),
          const ItemListView(),
        ],
      ),
    );
  }
}
