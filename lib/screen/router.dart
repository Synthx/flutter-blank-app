import 'package:blank_app/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      builder: (final context, final state, final child) => Splash(
        child: child,
      ),
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (final context, final state, final navigationShell) =>
              MainScreen(
            navigationShell: navigationShell,
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/',
                  builder: (final context, final state) => const HomeScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/counter',
                  builder: (final context, final state) =>
                      const CounterScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
