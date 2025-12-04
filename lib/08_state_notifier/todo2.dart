<<<<<<< HEAD
enum FiltroEnum { all, completed, pending } 


=======
>>>>>>> 81593b6268f070b80b8caf0822b23dcff1bb78c9
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