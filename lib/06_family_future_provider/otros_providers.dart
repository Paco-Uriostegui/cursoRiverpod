
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:practicas_riverpod/05_future_provider/pokemon.dart';

final pokemonFutureProvider2 = FutureProvider.family<String, int>((ref, pokemonID) async {
  final pokemon = await PokemonInformation.getPokemonName(pokemonID);
  return pokemon;
});

final pokemonId = StateProvider<int>((ref) {
  return 1;
});