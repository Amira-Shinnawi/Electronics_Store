import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final int? productId;
  final int? categoryId;
  final String productName;
  final String productImage;
  final String productPrice;
  final String? productType;
  final int? productEvaluation;

  const ProductModel({
    this.productId,
    this.categoryId,
   required this.productName,
  required  this.productImage,
  required  this.productPrice,
    this.productType,
    this.productEvaluation,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productId: json['productId'] as int?,
        categoryId: json['categoryId'] as int?,
        productName: json['productName'] as String,
        productImage: json['productImage'] as String,
        productPrice: json['productPrice'] as String,
        productType: json['productType'] as String?,
        productEvaluation: json['productEvaluation'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'categoryId': categoryId,
        'productName': productName,
        'productImage': productImage,
        'productPrice': productPrice,
        'productType': productType,
        'productEvaluation': productEvaluation,
      };

  @override
  List<Object?> get props {
    return [
      productId,
      categoryId,
      productName,
      productImage,
      productPrice,
      productType,
      productEvaluation,
    ];
  }
}
