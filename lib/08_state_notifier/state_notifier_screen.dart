import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practicas_riverpod/04_todo/todo_providers.dart';
import 'package:practicas_riverpod/08_state_notifier/state_notifier_provider.dart';
import 'package:practicas_riverpod/08_state_notifier/todo2.dart';


class StateNotifierScreen extends ConsumerWidget {
  const StateNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(todoFilterProvider);
    final todos = ref.watch(todoStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
      ),
      body: Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        SegmentedButton(
          segments: const[
            ButtonSegment(value: FiltroEnum.all, icon: Text('Todos')),
            ButtonSegment(value: FiltroEnum.completed, icon: Text('Invitados')),
            ButtonSegment(value: FiltroEnum.pending, icon: Text('No invitados')),
          ], 
          selected: <FiltroEnum>{currentFilter},
          onSelectionChanged: (value) {
            ref.read(todoFilterProvider.notifier).state = value.first;
            
          },
        ),
        const SizedBox( height: 5 ),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              
              return SwitchListTile(
                title: Text(todo.description),
                value: todo.done, 
                onChanged: ( value ) {
                  ref.read(todoStateNotifierProvider.notifier).toggleTodo(todo.id);

                }
              );
            },
          ),
        ),
        Center(child: FloatingActionButton(
          child: Icon(Icons.add) ,
          onPressed: () {
            ref.read(todoStateNotifierProvider.notifier).addTodo();

        }))
      ],
    ));
  }
}