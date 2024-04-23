import 'dart:convert';
import 'dart:developer' as developer;

import 'package:blank_app/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    developer.log(
      'Initial state: ${bloc.state}',
      level: LoggingLevel.info.value,
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    developer.log(
      'New state: ${change.nextState}',
      level: LoggingLevel.info.value,
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    developer.log(
      'Error encountered',
      level: LoggingLevel.severe.value,
      name: bloc.runtimeType.toString(),
      error: jsonEncode(error),
      stackTrace: stackTrace,
    );

    super.onError(bloc, error, stackTrace);
  }
}
