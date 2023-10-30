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