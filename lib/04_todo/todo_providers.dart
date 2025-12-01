import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:practicas_riverpod/todo.dart';
import 'package:random_name_generator/random_name_generator.dart';
import 'package:uuid/uuid.dart';

enum TodoFilter {all, completed, pending}

const Uuid uuid = Uuid();

final todoFilterProvider = StateProvider<TodoFilter>((ref) {
  return TodoFilter.all;
});

final todosProvider = StateProvider<List<Todo>>((ref) {
  final random = RandomNames();
  return [
    Todo(id: uuid.v4(), description: random.name(), completedAt: null),
    Todo(id: uuid.v4(), description: random.name(), completedAt: DateTime.now()),
    Todo(id: uuid.v4(), description: random.name(), completedAt: null),
    Todo(id: uuid.v4(), description: random.name(), completedAt: DateTime.now()),
    Todo(id: uuid.v4(), description: random.name(), completedAt: null)

  ];

});

final filteredListProvider = Provider<List<Todo>>((ref) {
  final filter = ref.watch(todoFilterProvider);
  final todos = ref.watch(todosProvider);

  switch (filter) {
  
    case TodoFilter.all:
      return todos;

    case TodoFilter.completed:
      return todos.where((element) => element.done).toList();
    case TodoFilter.pending:
      return todos.where((elemente) => !elemente.done).toList();
  }
});