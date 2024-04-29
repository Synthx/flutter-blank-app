import 'dart:developer' as developer;

import 'package:blank_app/core/core.dart';

class Logging {
  static void info(
    String message, {
    String name = '',
  }) {
    developer.log(
      message,
      name: name,
      time: DateTime.now(),
      level: LoggingLevel.info.value,
    );
  }

  static void severe(
    String message, {
    String name = '',
    Object? error,
    StackTrace? stackTrace,
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
