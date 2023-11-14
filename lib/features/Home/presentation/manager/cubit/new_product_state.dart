part of 'new_product_cubit.dart';

sealed class NewProductsState extends Equatable {
  const NewProductsState();

  @override
  List<Object> get props => [];
}

final class NewProductsInitial extends NewProductsState {}

final class NewProductsLoading extends NewProductsState {}

final class NewProductsSuccess extends NewProductsState {
  final List<ProductModel> product;

  const NewProductsSuccess(this.product);
}

final class NewProductsFailure extends NewProductsState {
  final String errorMessage;

  const NewProductsFailure(this.errorMessage);
}
