import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/formatter_utils.dart';
import '../../core/utils/spacing.dart';
import '../../core/utils/text_styles.dart';

class EmployeeTile extends StatelessWidget {
  final String name;
  final String job;
  final String admissionDate;
  final String phone;
  final String imageUrl;

  const EmployeeTile({
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phone,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: Border.all(width: 1, color: AppColors.gray10),
      collapsedIconColor: AppColors.blueprimary,
      iconColor: AppColors.blueprimary,
      collapsedShape: Border.all(
        color: AppColors.gray10,
        width: 1,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name, style: TextStyles.heading3Regular()),
      dense: false,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.regular16,
            vertical: Spacing.little08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRow('Cargo', job),
              const SizedBox(height: Spacing.little08),
              _buildRow(
                  'Data de admissão', FormatterUtils.formatDate(admissionDate)),
              const SizedBox(height: Spacing.little08),
              _buildRow('Telefone', FormatterUtils.formatPhone(phone)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyles.heading2Medium()),
        Text(value, style: TextStyles.heading3Regular()),
      ],
    );
  }
}
