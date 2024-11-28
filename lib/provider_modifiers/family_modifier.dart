import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<String> fetchWeatherReport(String city) async {
  return await Future.delayed(
    const Duration(seconds: 3),
    () => "City: $city | Temp: 33 C",
  );
}

final weatherProvider = FutureProvider.family.autoDispose<String, String>(
  (ref, cityName) => fetchWeatherReport(cityName),
);

class StartFamilyScreen extends StatelessWidget {
  const StartFamilyScreen({super.key});

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
            "Family Modifier",
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

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Screen"),
      ),
      body: ref.watch(weatherProvider("Islambad")).when(
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
