import 'package:blank_app/core/core.dart';
import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_state.dart';
import '../main_store.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  void _decrement(final BuildContext context) {
    context.read<MainStore>().decrement();
  }

  void _increment(final BuildContext context) {
    context.read<MainStore>().increment();
  }

  void _load(final BuildContext context) {
    context.read<MainStore>().load();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.navigationCounter),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kSafeArea),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: kSpacer,
          children: [
            BlocSelector<MainStore, MainState, int>(
              selector: (final state) => state.count,
              builder: (final context, final count) {
                return Text(
                  context.t.counterValue(count),
                  textAlign: TextAlign.center,
                );
              },
            ),
            Row(
              spacing: kSpacer,
              children: [
                Expanded(
                  child: BlocSelector<MainStore, MainState, int>(
                    selector: (final state) => state.count,
                    builder: (final context, final count) {
                      return ElevatedButton(
                        onPressed: count > 0 ? () => _decrement(context) : null,
                        child: Text(context.t.counterActionDecrement),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _increment(context),
                    child: Text(context.t.counterActionIncrement),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => _load(context),
              child: Text(context.t.counterActionLoad),
            ),
          ],
        ),
      ),
    );
  }
}
