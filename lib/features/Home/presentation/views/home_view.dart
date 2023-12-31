import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPadding,
      child: HomeViewBody(),
    );
  }
}
