import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthStore extends Cubit<AuthState> {
  AuthStore() : super(initialAuthState);

  Future init() async {
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
