import 'package:electronics_store/core/widgets/custom_error_widget.dart';
import 'package:electronics_store/features/Home/presentation/manager/cubit/new_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewProductsCubit, NewProductsState>(
      builder: (context, state) {
        if (state is NewProductsSuccess) {
          return Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 33, top: 12.5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 40,
              ),
              itemCount: state.product.length,
              itemBuilder: (context, index) {
                return  CustomItem(
                  productModel: state.product[index],
                );
              },
            ),
          );
        } else if (state is NewProductsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
