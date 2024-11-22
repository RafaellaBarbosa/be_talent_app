import 'package:intl/intl.dart';

class FormatterUtils {
  static String formatPhone(String phone) {
    if (phone.length != 13) {
      throw ArgumentError(
          'O número de telefone deve conter 13 dígitos (incluindo o código do país).');
    }

    return '+${phone.substring(0, 2)} (${phone.substring(2, 4)}) ${phone.substring(4, 9)}-${phone.substring(9)}';
  }

  static String formatDate(String date) {
    final parsedDate = DateTime.parse(date);

    return DateFormat('dd/MM/yyyy').format(parsedDate);
  }
}
