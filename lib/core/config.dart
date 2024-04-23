import 'dart:convert';

import 'package:blank_app/data/data.dart';
import 'package:flutter/services.dart';

late final Config config;

Future<void> loadConfig(String env) async {
  final data = await rootBundle.loadString('assets/config/$env.json');

  config = Config.fromJson(jsonDecode(data));
}
