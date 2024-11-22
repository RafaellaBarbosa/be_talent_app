import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  Future<void> initializeApp(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3)).then((_) {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/employees');
      }
    });
  }
}
