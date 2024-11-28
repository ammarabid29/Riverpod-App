import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/provider_types/stream_provider/fetch_numbers.dart';

final numbersProvider = StreamProvider<int>(
  (ref) => fetchNumbers(),
);

class NumbersScreen extends ConsumerWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncVal = ref.watch(numbersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers Screen"),
      ),
      body: asyncVal.when(
        data: (data) {
          return Center(
            child: Text(
              data.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(
              error.toString(),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
