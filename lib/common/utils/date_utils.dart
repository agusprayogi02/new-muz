import 'package:intl/intl.dart';

class DateCommonUtils {
  static Duration compareTime(String afterDate) {
    DateTime now = DateTime.now();
    DateTime after = DateTime.parse(afterDate);
    return now.difference(after);
  }

  static String formatDate(String date) {
    if (date.isEmpty) return '-';
    DateTime after = DateTime.parse(date);
    return DateFormat('dd MMM yyyy').format(after);
  }
}
