import 'package:blank_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'main_bottom_bar.dart';
import 'main_store.dart';

export 'counter/counter.dart';
export 'home/home.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({
    required this.navigationShell,
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final context) => MainStore(
        userService: getIt(),
      ),
      child: Scaffold(
        bottomNavigationBar: MainBottomBar(
          navigationShell: navigationShell,
        ),
        body: navigationShell,
      ),
    );
  }
}
