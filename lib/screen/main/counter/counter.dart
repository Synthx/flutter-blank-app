import 'package:blank_app/core/core.dart';
import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../main_state.dart';
import '../main_store.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  void _decrement(BuildContext context) {
    context.read<MainStore>().decrement();
  }

  void _increment(BuildContext context) {
    context.read<MainStore>().increment();
  }

  void _load(BuildContext context) {
    context.read<MainStore>().load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.navigationCounter),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kSafeArea),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocSelector<MainStore, MainState, int>(
              selector: (state) => state.count,
              builder: (context, count) {
                return Text(
                  context.t.counterValue(count),
                  textAlign: TextAlign.center,
                );
              },
            ),
            const Gap(kSpacer),
            Row(
              children: [
                Expanded(
                  child: BlocSelector<MainStore, MainState, int>(
                    selector: (state) => state.count,
                    builder: (context, count) {
                      return ElevatedButton(
                        onPressed: count > 0 ? () => _decrement(context) : null,
                        child: Text(context.t.counterActionDecrement),
                      );
                    },
                  ),
                ),
                const Gap(kSpacer),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _increment(context),
                    child: Text(context.t.counterActionIncrement),
                  ),
                ),
              ],
            ),
            const Gap(kSpacer),
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
