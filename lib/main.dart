import 'package:blank_app/app.dart';
import 'package:blank_app/core/core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupInjector();

  runApp(const MyApp());
}
