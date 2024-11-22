import 'package:be_talent_app/core/utils/images.dart';
import 'package:be_talent_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/text_styles.dart';

class BellNotification extends StatelessWidget {
  const BellNotification({
    super.key,
    required this.numberNotification,
  });

  final String numberNotification;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Padding(
        padding: const EdgeInsets.only(
          right: Spacing.regular20,
        ),
        child: Stack(
          children: [
            SizedBox(
                height: 36,
                width: 36,
                child: SvgPicture.asset(
                  AppImages.bell_notification,
                  color: AppColors.black,
                )),
            Positioned(
              right: 0,
              child: SizedBox(
                height: Spacing.regular20,
                width: Spacing.regular20,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: AppColors.blueprimary,
                  child: Text(
                    numberNotification,
                    style: TextStyles.heading4SemiBold(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
