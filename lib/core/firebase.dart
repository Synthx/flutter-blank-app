import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

Future setupFirebase() async {
  await Firebase.initializeApp();

  // framework errors
  FlutterError.onError = (final details) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };

  // other errors
  PlatformDispatcher.instance.onError = (final error, final stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}
