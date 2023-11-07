import 'package:electronics_store/features/Card/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchResultListViewItem extends StatelessWidget {
  const SearchResultListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: SearchListView(),
        );
      },
    );
  }
}
