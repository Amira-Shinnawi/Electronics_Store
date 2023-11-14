import 'package:dartz/dartz.dart';
import 'package:electronics_store/core/errors/failures.dart';
import 'package:electronics_store/features/Home/data/models/Product.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchNewProducts();
}
