import 'package:bloc_cubit/todo_cubit_and_bloc/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitAddTodoPage extends StatefulWidget {
  const CubitAddTodoPage({super.key});

  @override
  State<CubitAddTodoPage> createState() => _CubitAddTodoPageState();
}

class _CubitAddTodoPageState extends State<CubitAddTodoPage> {
  final title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final todoCubit = BlocProvider.of<TodoCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Add Todo'),
        elevation: 3,
      ),
      body: Column(
        children: [
          TextField(
            controller: title,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextButton(
            onPressed: () {
              // Way 1
              // todoCubit.addTodo(title.text.trim());

              // Way 2
              context.read<TodoCubit>().addTodo(title.text.trim());
              Navigator.of(context).pop();
            },
            child: const Text('ADD'),
          ),
        ],
      ),
    );
  }
}
