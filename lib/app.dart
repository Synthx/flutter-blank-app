import 'package:blank_app/l10n/app_localizations.dart';
import 'package:blank_app/screen/screen.dart';
import 'package:blank_app/store/store.dart';
import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlankApp extends StatelessWidget {
  const BlankApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final context) => AuthStore(),
      child: MaterialApp.router(
        title: 'Flutter blank app',
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: lightThemeData,
        themeMode: ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}
