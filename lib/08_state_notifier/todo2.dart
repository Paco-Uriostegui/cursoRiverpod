enum FiltroEnum { all, completed, pending } 


class Todo2 {

  final String id;
  final String description;
  final DateTime? completedAt;

  Todo2({
    required this.id,
    required this.description,
    required this.completedAt,
  });

  bool get done {
    return completedAt != null; // true or false
  }

  Todo2 copyWith({
    String? id,
    String? description,
    DateTime? completedAt,
  }) => Todo2(
    id: id ?? this.id,
    description: description ?? this.description,
    completedAt: completedAt,
  );

}