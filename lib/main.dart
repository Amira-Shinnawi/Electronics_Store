import 'package:electronics_store/constants.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const ElectronicsStore());
}

class ElectronicsStore extends StatelessWidget {
  const ElectronicsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: kItim,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      
    );
  }
}
