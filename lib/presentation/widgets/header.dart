import 'package:be_talent_app/core/utils/colors.dart';
import 'package:be_talent_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';

import '../../core/utils/text_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
          color: AppColors.blue10,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Foto', style: TextStyles.heading2Medium()),
            const SizedBox(width: Spacing.regular20),
            Text('Nome', style: TextStyles.heading2Medium()),
            const Spacer(),
            const Icon(
              Icons.circle,
              size: 8,
              color: AppColors.black,
            ),
            const SizedBox(width: Spacing.little08),
          ],
        ),
      ),
    );
  }
}
