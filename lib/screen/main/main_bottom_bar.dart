import 'package:blank_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainBottomBar({required this.navigationShell, super.key});

  void _onTap(final int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BottomNavigationBar(
      onTap: (final index) => _onTap(index),
      iconSize: 30,
      currentIndex: navigationShell.currentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: const Icon(Icons.home),
          icon: const Icon(Icons.home_outlined),
          label: context.t.navigationHome,
        ),
        BottomNavigationBarItem(
          activeIcon: const Icon(Icons.sell),
          icon: const Icon(Icons.sell_outlined),
          label: context.t.navigationCounter,
        ),
      ],
    );
  }
}
