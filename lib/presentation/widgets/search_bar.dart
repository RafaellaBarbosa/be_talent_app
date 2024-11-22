import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    this.onChanged,
    required this.hintText,
  });

  final void Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: hintText,
      padding: const WidgetStatePropertyAll(EdgeInsets.only(
        left: 24,
      )),
      backgroundColor: const WidgetStatePropertyAll(AppColors.gray5),
      shape: const WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
      textStyle: WidgetStatePropertyAll(TextStyles.heading3Regular()),
      elevation: const WidgetStatePropertyAll(0),
      onChanged: onChanged,
      leading: const Icon(
        Icons.search,
        size: 24,
      ),
    );
  }
}
