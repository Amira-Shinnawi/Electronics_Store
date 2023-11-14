import 'package:electronics_store/constants.dart';
import 'package:electronics_store/core/utils/service_locator.dart';
import 'package:electronics_store/features/Home/data/repos/home_repo_imple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_router.dart';
import 'features/Home/presentation/manager/cubit/new_product_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const ElectronicsStore());
}

class ElectronicsStore extends StatelessWidget {
  const ElectronicsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewProductsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewProducts(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: kItim,
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
