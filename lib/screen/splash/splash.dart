import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_screen.dart';
import 'splash_store.dart';

class Splash extends StatelessWidget {
  final Widget child;

  const Splash({required this.child, super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final context) => SplashStore(authStore: context.read())..init(),
      child: BlocSelector<SplashStore, bool, bool>(
        selector: (final state) => state,
        builder: (final context, final isLoading) {
          if (isLoading) {
            return const SplashScreen();
          }

          return child;
        },
      ),
    );
  }
}
