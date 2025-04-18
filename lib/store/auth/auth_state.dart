import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({final String? userId}) = _AuthState;
}

const initialAuthState = AuthState();
