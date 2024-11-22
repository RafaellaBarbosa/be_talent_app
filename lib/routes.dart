import 'package:flutter/material.dart';

import 'presentation/views/employee_screen.dart';
import 'presentation/views/splash_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const SplashScreen(),
    '/employees': (context) => const EmployeeScreen(),
  };
}
