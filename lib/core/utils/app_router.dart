import 'package:electronics_store/features/Account/presentation/views/account_view.dart';
import 'package:electronics_store/features/Home/presentation/views/card_view.dart';
import 'package:electronics_store/features/Home/presentation/views/main_view.dart';
import 'package:electronics_store/features/Splash/presentation/views/on_boarding_view.dart';
import 'package:electronics_store/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/views/category_view.dart';

abstract class AppRouter {
  static const kMainView = '/mainHome';
  static const kCategoryView = '/categoryView';
  static const kCard = '/cardView';
  static const kOnBoarding = '/onBoarding';
  static const kAccountView = '/AccountView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => const MainHome(),
      ),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) => const CategoryView(),
      ),
      GoRoute(
        path: kCard,
        builder: (context, state) => const CardView(),
      ),
      GoRoute(
        path: kOnBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kAccountView,
        builder: (context, state) => const AccountView(),
      ),
    ],
  );
}
