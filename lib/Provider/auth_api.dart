// providers/auth_provider.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:med_pay/Features/models/auth/register_model.dart';
import 'package:med_pay/Features/utils.dart';

class SignUpProvider with ChangeNotifier {
  Future<void> register(User user) async {
    final url = Uri.parse(ApiUrl+'/api/auth/register');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(user.toJson()),
      );
      if (response.statusCode == 200) {
        // Handle successful registration
        print('User registered successfully');
      } else {
        // Handle error
        print('Registration failed: ${response.body}');
      }
    } catch (error) {
      throw error;
    }
  }
}
