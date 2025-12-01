
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_name_generator/random_name_generator.dart';

final simpleNameProvider = Provider.autoDispose<String> ((ref) {
  final random = RandomNames();
  return random.name();
  });