import 'package:flutter/material.dart';

class BlocTodoListPage extends StatelessWidget {
  const BlocTodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Placeholder(),
    );
  }
}
