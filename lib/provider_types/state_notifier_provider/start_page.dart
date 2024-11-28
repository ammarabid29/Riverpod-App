import 'package:flutter/material.dart';
import 'package:riverpod_app/provider_types/state_notifier_provider/state_notifier_provider.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const CounterScreen(),
              ),
            );
          },
          child: const Text(
            "State Notifier Provider",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
