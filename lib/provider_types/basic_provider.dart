import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider = Provider<String>(
  (ref) {
    return 'Provider';
  },
);
