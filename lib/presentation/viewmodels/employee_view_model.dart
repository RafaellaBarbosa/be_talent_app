import 'package:flutter/material.dart';

import '../../data/models/employee_model.dart';
import '../../data/services/user_service.dart';

class EmployeeViewModel extends ChangeNotifier {
  final UserService _userService;

  EmployeeViewModel(this._userService);

  List<Employee> _employees = [];
  List<Employee> _filteredEmployees = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<Employee> get employees => _employees;
  List<Employee> get filteredEmployees => _filteredEmployees;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> loadEmployees() async {
    _isLoading = true;
    notifyListeners();

    try {
      _employees = await _userService.fetchEmployees();
      _filteredEmployees = _employees;
    } catch (e) {
      _errorMessage = 'Erro ao carregar funcionários';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void filterEmployees(String query) {
    if (query.isEmpty) {
      _filteredEmployees = _employees;
    } else {
      final lowerQuery = query.toLowerCase();
      _filteredEmployees = _employees.where((employee) {
        return employee.name.toLowerCase().contains(lowerQuery) ||
            employee.job.toLowerCase().contains(lowerQuery) ||
            employee.phone.toLowerCase().contains(lowerQuery);
      }).toList();
    }
    notifyListeners();
  }
}
