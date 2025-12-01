

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:practicas_riverpod/05_future_provider/pokemon.dart';

final pokemonFutureProvider2 = FutureProvider.family<String, int>((ref, pokemonID) async {
  final pokemon = await PokemonInformation.getPokemonName(pokemonID);
  return pokemon;
});
