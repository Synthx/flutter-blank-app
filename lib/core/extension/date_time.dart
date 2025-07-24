import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String format(final String format) {
    return DateFormat(format).format(this);
  }

  DateTime get startOfDay {
    return DateTime(year, month, day);
  }

  DateTime get endOfDay {
    return DateTime(year, month, day, 23, 59, 59);
  }
}
