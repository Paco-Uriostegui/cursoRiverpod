

import 'package:practicas_riverpod/08_state_notifier/todo2.dart';
import 'package:practicas_riverpod/random_generator.dart';
import 'package:riverpod/legacy.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

final todoStateNotifierProvider = StateNotifierProvider<TodoNotifier, List<Todo2>>((ref) {
  return TodoNotifier();
});

class TodoNotifier extends StateNotifier<List<Todo2>> {
  TodoNotifier(): super([
    Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null)
  ]);

  void addTodo() {
    state = [
      ...state,
      Todo2(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    ];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;
      if (todo.done) return todo.copyWith(completedAt: null);
      return todo.copyWith(completedAt: DateTime.now());
 

    }).toList();
  }

}