import 'package:bloc_cubit/basic_cubit_and_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPageB extends StatelessWidget {
  const SecondPageB({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBolc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                // 6. Call the increment method
                counterBolc.add(CounterIncremented());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                // 7. Call the decrement method
                counterBolc.add(CounterDecremented());
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
