import 'package:be_talent_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static String fontFamily = 'Helvetica';

  static TextStyle heading1Medium({
    Color? color,
  }) =>
      TextStyle(
        fontSize: 20,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        color: color ?? AppColors.black,
      );

  static TextStyle heading2Medium({
    Color? color,
  }) =>
      TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.black,
      );

  static TextStyle heading3Regular({
    Color? color,
  }) =>
      TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        color: color ?? AppColors.black,
      );
}
