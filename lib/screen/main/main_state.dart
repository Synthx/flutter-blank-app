import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required bool isLoading,
    required int count,
  }) = _MainState;
}

const initialMainState = MainState(
  isLoading: false,
  count: 0,
);
