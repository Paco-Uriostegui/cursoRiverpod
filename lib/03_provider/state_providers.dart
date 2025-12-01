
import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider<int>((ref) {
  return 8;
});

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});