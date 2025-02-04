import 'dart:convert';

import 'package:blank_app/data/data.dart';
import 'package:flutter/services.dart';

late final Config config;

Future<void> loadConfig(final Env env) async {
  final data = await rootBundle.loadString('assets/config/${env.name}.json');

  config = Config.fromJson(jsonDecode(data));
}
