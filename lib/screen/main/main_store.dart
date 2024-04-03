import 'package:blank_app/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_state.dart';

class MainStore extends Cubit<MainState> {
  final UserService userService;

  MainStore({
    required this.userService,
  }) : super(initialMainState);

  Future init() async {
    emit(state.copyWith(isLoading: true));
    final users = await userService.findAll();
    emit(state.copyWith(isLoading: false, count: users.length));
  }

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
