import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/provider_types/change_notifier_provider/start_page.dart';

// import 'package:riverpod_app/provider_types/basic_provider.dart';
// import 'package:riverpod_app/provider_types/state_provider.dart';
// import 'package:riverpod_app/provider_types/future_provider/start_page.dart';
// import 'package:riverpod_app/provider_types/stream_provider/start_page.dart';
// import 'package:riverpod_app/provider_types/state_notifier_provider/start_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // basic_provider
      // home: BasicProvider(),

      // state_provider
      // home: CounterWidget(),

      // future_provider
      // home: StartPage(),

      // stream_provider
      // home: StartPage(),

      // state_notifier_provider
      // home: StartPage(),

      // change_notifier_provider
      home: StartPage(),
    );
  }
}
