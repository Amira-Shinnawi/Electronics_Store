import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Card/presentation/views/widgets/search_result_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import '../../../../Home/presentation/views/widgets/custom_app_bar.dart';
import '../../../../Home/presentation/views/widgets/search_home_view.dart';

class SearchCategoryBody extends StatelessWidget {
  const SearchCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 28,
              ),
              const SearchHomeView(),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Search Results',
                style: Styles.textStyle32KItim.copyWith(
                  color: kBlueColor,
                  
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Expanded(
                child: SearchResultListViewItem(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
