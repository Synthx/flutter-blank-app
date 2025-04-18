import 'package:blank_app/store/store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashStore extends Cubit<bool> {
  final AuthStore authStore;

  SplashStore({required this.authStore}) : super(true);

  Future init() async {
    try {
      await authStore.init();

      emit(false);
    } catch (error, stackTrace) {
      super.addError(error, stackTrace);
    }
  }
}
