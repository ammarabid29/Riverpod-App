import 'package:flutter/material.dart';
import 'package:riverpod_app/provider_types/future_provider/future_provider.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const WeatherScreen()));
          },
          child: const Text(
            "Future Builder",
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
