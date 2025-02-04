import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

Future setupLocale(final String defaultLocale) async {
  await initializeDateFormatting(defaultLocale);
  Intl.defaultLocale = defaultLocale;
}
