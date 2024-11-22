import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/images.dart';
import '../viewmodels/splash_view_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashViewModel>().initializeApp(context);

    return Scaffold(
      backgroundColor: AppColors.blueprimary,
      body: Center(
        child: Image.asset(
          AppImages.logo_be_talent,
          height: 39,
          width: 199,
        ),
      ),
    );
  }
}
