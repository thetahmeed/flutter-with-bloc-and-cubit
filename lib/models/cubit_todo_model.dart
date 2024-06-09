// ignore_for_file: public_member_api_docs, sort_constructors_first
class CubitTodoModel {
  final String title;
  final DateTime createdAt;

  CubitTodoModel({
    required this.title,
    required this.createdAt,
  });

  @override
  String toString() => 'CubitTodoModel(title: $title, createdAt: $createdAt)';
}
