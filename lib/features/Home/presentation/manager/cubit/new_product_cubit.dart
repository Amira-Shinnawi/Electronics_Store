import 'package:bloc/bloc.dart';
import 'package:electronics_store/features/Home/data/models/Product.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'new_product_state.dart';

class NewProductsCubit extends Cubit<NewProductsState> {
  NewProductsCubit(this.homeRepo) : super(NewProductsInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewProducts() async {
    emit(NewProductsLoading());
    var result = await homeRepo.fetchNewProducts();
    result.fold((failure) {
      emit(NewProductsFailure(failure.errorMessage));
    }, (product) {
      emit(NewProductsSuccess(product));
    });
  }
}
