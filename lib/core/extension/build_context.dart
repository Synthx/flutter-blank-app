import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get topSafeArea => MediaQuery.of(this).padding.top;

  double get bottomSafeArea => MediaQuery.of(this).padding.bottom;

  AppLocalizations get t => AppLocalizations.of(this)!;
}
