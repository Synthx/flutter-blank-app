import 'package:blank_app/app.dart';
import 'package:blank_app/core/core.dart';
import 'package:blank_app/store/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = StoreObserver();

  setupInjector();
  setupHttp();

  await Future.wait([
    // setupFirebase(),
    setupLocale('fr_FR'),
  ]);

  runApp(const MyApp());
}
