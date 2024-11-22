import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/services/user_service.dart';
import 'presentation/viewmodels/employee_view_model.dart';
import 'presentation/viewmodels/splash_view_model.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => EmployeeViewModel(UserService()),
        ),
        ChangeNotifierProvider(
          create: (context) => SplashViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Be Talent App',
        initialRoute: '/',
        routes: AppRoutes.routes,
      ),
    );
  }
}
