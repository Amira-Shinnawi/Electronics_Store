import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class UserModel extends Equatable {
  final String? status;
  final String? message;
  final Data? data;

  const UserModel({this.status, this.message, this.data});

  factory UserModel.from(Map<String, dynamic> data) => UserModel(
        status: data['status'] as String?,
        message: data['message'] as String?,
        data: data['data'] == null
            ? null
            : Data.from(data['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> to() => {
        'status': status,
        'message': message,
        'data': data?.to(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserModel].
  factory UserModel.fromJson(String data) {
    return UserModel.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserModel] to a JSON string.
  String toJson() => json.encode(to());

  @override
  List<Object?> get props => [status, message, data];
}
