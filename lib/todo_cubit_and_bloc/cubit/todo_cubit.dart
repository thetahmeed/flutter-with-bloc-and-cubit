import 'package:bloc_cubit/models/cubit_todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<CubitTodoModel>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title is empty');
      return;
    }
    final todo = CubitTodoModel(
      title: title,
      createdAt: DateTime.now(),
    );

    // Way 1
    // state.add(todo);
    // emit([...state]);

    // Way 2
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<CubitTodoModel>> change) {
    print('CubitTodo State: $change');
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('CubitTodo Error: $error');
    super.onError(error, stackTrace);
  }
}
