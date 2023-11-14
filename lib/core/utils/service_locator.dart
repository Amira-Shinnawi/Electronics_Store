import 'package:dio/dio.dart';
import 'package:electronics_store/core/utils/api_service.dart';
import 'package:electronics_store/features/Home/data/repos/home_repo_imple.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<APIService>(
    APIService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<APIService>(),
    ),
  );
}
