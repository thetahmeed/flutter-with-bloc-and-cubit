import 'package:flutter/material.dart';

class BlocAddTodoPage extends StatelessWidget {
  const BlocAddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Add Todo'),
        elevation: 3,
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('ADD'),
          ),
        ],
      ),
    );
  }
}
