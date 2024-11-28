import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/provider_types/change_notifier_provider/user_notifier.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          var data = ref.watch(userProvider);
          return Text(
            data.userName,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(userProvider.notifier).changeUserName();
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
