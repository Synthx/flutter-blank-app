import 'dart:developer' as developer;

import 'package:blank_app/core/core.dart';

class Logging {
  static void info(
    final String message, {
    final String name = '',
  }) {
    developer.log(
      message,
      name: name,
      time: DateTime.now(),
      level: LoggingLevel.info.value,
    );
  }

  static void severe(
    final String message, {
    final String name = '',
    final Object? error,
    final StackTrace? stackTrace,
  }) {
    developer.log(
      message,
      name: name,
      error: error,
      stackTrace: stackTrace,
      time: DateTime.now(),
      level: LoggingLevel.severe.value,
    );
  }
}
