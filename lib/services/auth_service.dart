import 'dart:convert';

import 'package:eventify/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class AuthService {
  final logger = Logger();

  static const String baseURL = 'https://eventify.iaknowhow.es/public/api/';

  //Service Register
  Future<UserModel?> registerUser(UserModel userModel) async {
    final response = await http.post(
      Uri.parse('${baseURL}register'),
      headers: {'Accept': 'application/json'},
      body: {
        'name': userModel.name,
        'email': userModel.email,
        'password': userModel.password!,
        'c_password': userModel.password!,
        'role': userModel.role,
      },
    );

    final jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200 && jsonResponse['success'] == true) {
      return UserModel.fromJson(jsonResponse['data']);
    } else {
      logger.e('Register failed: ${jsonResponse['message']}');
  return null;
    }
  }

  //Service Login
  Future<UserModel?> loginUser(UserModel userModel) async {
    final response = await http.post(
      Uri.parse('${baseURL}login'),
      headers: {'Accept': 'application/json'},
      body: {'email': userModel.email, 'password': userModel.password!},
    );

    final jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200 && jsonResponse['success'] == true) {
      return UserModel.fromJson(jsonResponse['data']);
    } else {
      logger.e('Login failed: ${jsonResponse['data']['error']}');
      return null;
    }
  }
}
