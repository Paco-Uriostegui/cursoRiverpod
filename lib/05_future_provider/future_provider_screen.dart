import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practicas_riverpod/05_future_provider/future_provider.dart';


class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: pokemon.when(
          data: (name) => Text(name), 
          error: (e, traceStack) => ErrorWidget(e), 
          loading: () => CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.refresh ),
        onPressed: () { 
          ref.read(pokemonIdProvider.notifier).update((state) => state + 1);
         },
      ),
    );
  }
}