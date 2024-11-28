import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/provider_types/future_provider/dummy_weather.dart';

// autoDispose is used to automatically clear cache
final weatherProvider = FutureProvider.autoDispose<String>(
  (ref) => fetchWeatherReport(),
);

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Screen"),
      ),
      body: ref.watch(weatherProvider).when(
        data: (data) {
          return Center(
            child: Text(
              data,
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
            child: Text(error.toString()),
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
