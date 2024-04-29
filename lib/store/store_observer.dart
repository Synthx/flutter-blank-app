import 'package:blank_app/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    Logging.info(
      'Initial state: ${bloc.state}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    Logging.info(
      'New state: ${change.nextState}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Logging.severe(
      'Error encountered',
      name: bloc.runtimeType.toString(),
      error: error,
      stackTrace: stackTrace,
    );

    super.onError(bloc, error, stackTrace);
  }
}
