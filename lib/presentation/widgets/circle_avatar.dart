import 'package:be_talent_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String? nomeCompleto;

  const CircleAvatarWidget({super.key, this.nomeCompleto});

  String _getIniciais() {
    if (nomeCompleto == null) return '';

    final nomes = nomeCompleto!.split(' ');
    if (nomes.length > 1) {
      return '${nomes[0][0].toUpperCase()}${nomes[1][0].toUpperCase()}';
    } else {
      return nomes[0][0].toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: 45,
        width: 45,
        child: CircleAvatar(
          backgroundColor: AppColors.gray5,
          child: Text(
            _getIniciais(),
            style: TextStyles.heading3Regular(),
          ),
        ),
      ),
    );
  }
}
