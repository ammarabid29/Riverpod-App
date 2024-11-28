import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

final stringProvider = Provider<String>(
  (ref) {
    return 'Provider';
  },
);

class BasicProvider extends ConsumerWidget {
  const BasicProvider({super.key});

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
