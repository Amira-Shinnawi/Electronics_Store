import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:electronics_store/core/errors/failures.dart';
import 'package:electronics_store/features/Home/data/models/Product.dart';
import 'package:electronics_store/features/Home/data/repos/home_repo.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo {
  final APIService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchNewProducts() async {
    try {
      var data = await apiService.getMethod(endPoint: 'showAllProduct.php');

    List<ProductModel> products = [];
    for (var item in data['data']) {
        
          products.add(ProductModel.fromJson(item));
        
      }

      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExceptionError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
