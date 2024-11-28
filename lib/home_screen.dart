import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/provider_types/basic_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String ourData = ref.read<String>(stringProvider);
    return Scaffold(
      body: Center(
        child: Text(
          ourData,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
