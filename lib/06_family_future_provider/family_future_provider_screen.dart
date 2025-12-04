import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practicas_riverpod/06_family_future_provider/family_future_provider.dart';


class FamilyFutureScreen extends ConsumerStatefulWidget {

  
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 1;

  @override
  Widget build(BuildContext context) {
    
    final pokemonName = ref.watch(pokemonFutureProvider2(pokemonId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Future Provider'),
      ),
      body: Center(
        child: pokemonName.when(
          data: (name) => Text(name), 
          error: (e, traceStack) => ErrorWidget(e), 
          loading: () => CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.refresh ),
        onPressed: () { 
          pokemonId++;

            setState(() {

            });
        
         },
      ),
    );
  }
}