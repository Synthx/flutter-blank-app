import 'package:blank_app/core/core.dart';
import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_state.dart';
import 'main_store.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _increment(BuildContext context) {
    context.read<MainStore>().increment();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainStore(
        userService: getIt(),
      )..init(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(context.t.mainTitle),
            ),
            body: Padding(
              padding: const EdgeInsets.all(kSafeArea),
              child: Column(
                children: [
                  BlocSelector<MainStore, MainState, int>(
                    selector: (state) => state.count,
                    builder: (context, count) {
                      return Text('$count');
                    },
                  ),
                  const SizedBox(height: kSpacer),
                  ElevatedButton(
                    onPressed: () => _increment(context),
                    child: Text(context.t.mainAction),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
