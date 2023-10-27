import 'package:electronics_store/features/Home/presentation/views/card_view.dart';
import 'package:electronics_store/features/Home/presentation/views/main_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/views/category_view.dart';

abstract class AppRouter {
  static const kHomeView = '/mainHome';
  static const kCategoryView = '/categoryView';
  static const kCard = '/cardView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
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
    ],
  );
}
