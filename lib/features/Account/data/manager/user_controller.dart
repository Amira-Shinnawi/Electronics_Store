import 'dart:convert';

import 'package:http/http.dart' as http;

class UserController {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return data;
      } else {
        print('Error ${response.statusCode}');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  postRequest(String url, Map dataBody) async {
    try {
      var response = await http.post(
        Uri.parse(url),
        body: dataBody,
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return data;
      } else {
        print('Error ${response.statusCode}');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}


// class UserController {
//   Future<UserModel> login({
//     required String email,
//     required String password,
//   }) async {
//     final response = await http.get(
//       Uri.parse(
//         'http://localhost:80/elecshop/auth/login.php',
//       ),
//     );
//     if (response.statusCode == 200) {
//       var data = convert.jsonDecode(response.body);
//       return UserModel.fromJson(data);
//     } else {
//       throw Exception('Something went wrong ${response.statusCode}');
//     }
//   }

//   Future<UserModel> register({
//     required String fName,
//     required String lName,
//     required String password,
//     required String phoneNum,
//     required String email,
//   }) async {
//     final response = await http.post(
//       Uri.parse(
//         'http://localhost:80/elecshop/auth/signup.php',
//       ),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=utf-8'
//       },
//       body: jsonEncode(<String, dynamic>{
//         'firstName': fName,
//         'lastName': lName,
//         'password': password,
//         'phoneNumber': phoneNum,
//         'emailAddress': email,
//       }),
//     );
//     if (response.statusCode == 200) {
//       var data = convert.jsonDecode(response.body);
//       return UserModel.fromJson(data);
//     } else {
//       throw Exception('Something went wrong ${response.statusCode}');
//     }
//   }
// }
