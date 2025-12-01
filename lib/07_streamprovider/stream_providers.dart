
import 'package:practicas_riverpod/random_generator.dart';
import 'package:riverpod/riverpod.dart';

final streamProvider = StreamProvider<List<String>>((ref) async* {
  final List<String> names = [];
  yield [];

  await for(final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }

}); 