import 'package:intl/intl.dart';

class FormatterUtils {
  static String formatPhone(String phone) {
    return '(${phone.substring(0, 2)}) ${phone.substring(2, 6)}-${phone.substring(6)}';
  }

  static String formatDate(String date) {
    final parsedDate = DateTime.parse(date);

    return DateFormat('dd/MM/yyyy').format(parsedDate);
  }
}
