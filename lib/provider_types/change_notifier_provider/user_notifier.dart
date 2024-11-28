import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends ChangeNotifier {
  String userName = "Ammar";

  void changeUserName() {
    userName = 'Abid';
    notifyListeners();
  }
}

final userProvider = ChangeNotifierProvider<UserNotifier>(
  (ref) => UserNotifier(),
);
