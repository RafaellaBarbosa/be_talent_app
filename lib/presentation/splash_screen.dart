import 'package:flutter/material.dart';

import '../core/utils/colors.dart';
import '../core/utils/images.dart';
import 'employee_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const EmployeeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueprimary,
      body: Center(
          child: Image.asset(
        AppImages.logo_be_talent,
        height: 39,
        width: 199,
      )),
    );
  }
}
