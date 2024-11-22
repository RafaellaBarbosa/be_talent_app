import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/employee_model.dart';

class UserService {
  final String _baseUrl = 'http://127.0.0.1:3000';

  Future<List<Employee>> fetchEmployees() async {
    final response = await http.get(Uri.parse('$_baseUrl/employees'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((e) => Employee.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch employees');
    }
  }
}
