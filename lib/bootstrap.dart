import 'package:blank_app/app.dart';
import 'package:blank_app/core/core.dart';
import 'package:blank_app/store/store.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootstrap(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = StoreObserver();

  await loadConfig(env);

  setupInjector();
  setupHttp();

  await Future.wait([
    // setupFirebase(),
    setupLocale('fr_FR'),
  ]);

  runApp(const BlankApp());
}
