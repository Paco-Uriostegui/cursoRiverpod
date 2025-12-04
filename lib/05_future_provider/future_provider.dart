

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:practicas_riverpod/05_future_provider/pokemon.dart';

final pokemonFutureProvider = FutureProvider<String>((ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemon = await PokemonInformation.getPokemonName(pokemonId);
  return pokemon;
});

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});