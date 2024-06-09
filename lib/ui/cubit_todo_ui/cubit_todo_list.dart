import 'package:bloc_cubit/models/cubit_todo_model.dart';
import 'package:bloc_cubit/todo_cubit_and_bloc/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitTodoListPage extends StatelessWidget {
  const CubitTodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final todoCubit = BlocProvider.of<TodoCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Todo List'),
        elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed('/cubit-add-todo');
            },
          ),
        ],
      ),
      body: BlocBuilder<TodoCubit, List<CubitTodoModel>>(
        //bloc: todoCubit,
        builder: (context, todos) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text('Created at: ${todo.createdAt}'),
              );
            },
            itemCount: todos.length,
          );
        },
      ),
    );
  }
}
