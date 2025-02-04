import 'package:blank_app/core/core.dart';
import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.navigationHome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kSafeArea),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: kSpacer,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                'assets/bird.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(context.t.homeTitle('Paul')),
            Text(context.t.homeDate(now)),
            Text(context.t.homePrice(2)),
          ],
        ),
      ),
    );
  }
}
