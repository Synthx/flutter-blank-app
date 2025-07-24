// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get navigationHome => 'Accueil';

  @override
  String get navigationCounter => 'Compteur';

  @override
  String homeTitle(Object name) {
    return 'Bonjour $name';
  }

  @override
  String homeDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMEd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Nous sommes le $dateString';
  }

  @override
  String homePrice(double price) {
    final intl.NumberFormat priceNumberFormat =
        intl.NumberFormat.compactSimpleCurrency(locale: localeName);
    final String priceString = priceNumberFormat.format(price);

    return 'Le prix de cette application est de $priceString';
  }

  @override
  String get counterActionIncrement => 'Incrementer';

  @override
  String get counterActionDecrement => 'Décrementer';

  @override
  String get counterActionLoad => 'Charger une valeur (asynchrone)';

  @override
  String counterValue(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Compteur : $count',
      one: 'Le compteur vaut 1',
      zero: 'Aucun compteur',
    );
    return '$_temp0';
  }
}
