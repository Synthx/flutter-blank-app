import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/main_state.freezed.dart';

@freezed
sealed class MainState with _$MainState {
  const factory MainState({
    required final bool isLoading,
    required final int count,
  }) = _MainState;
}

const initialMainState = MainState(isLoading: false, count: 0);
