import 'dart:convert';

import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final int? userId;
  final String? firstName;
  final String? lastName;
  final String? password;
  final String? phoneNumber;
  final String? emailAddress;
  final String? token;
  final int? verification;

  const Data({
    this.userId,
    this.firstName,
    this.lastName,
    this.password,
    this.phoneNumber,
    this.emailAddress,
    this.token,
    this.verification,
  });

  factory Data.from(Map<String, dynamic> data) => Data(
        userId: data['userId'] as int?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        emailAddress: data['emailAddress'] as String?,
        token: data['token'] as String?,
        verification: data['verification'] as int?,
      );

  Map<String, dynamic> to() => {
        'userId': userId,
        'firstName': firstName,
        'lastName': lastName,
        'password': password,
        'phoneNumber': phoneNumber,
        'emailAddress': emailAddress,
        'token': token,
        'verification': verification,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.from(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(to());

  @override
  List<Object?> get props {
    return [
      userId,
      firstName,
      lastName,
      password,
      phoneNumber,
      emailAddress,
      token,
      verification,
    ];
  }
}
