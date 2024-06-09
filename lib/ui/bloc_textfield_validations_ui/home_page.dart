import 'package:bloc_cubit/bloc_auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/gradient_button.dart';

class BlocAuthHomePage extends StatelessWidget {
  const BlocAuthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    /* 
    we can use BlocBuilder but we can use context.watch as well
    which continuously listens to the state changes
    but all the widgets will be rebuilt as well
    in that case we can use BlocBuilder

     final successState =
                  context.watch<AuthBloc>().state as AuthSuccess;
    */

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is AuthInitial) {
            Navigator.of(context).pushReplacementNamed('/');
          }
        },
        child: Center(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthLoading) {
                return const CircularProgressIndicator();
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Bloc Auth Home Page'),
                  if (state is AuthSuccess) Text('UID: ${(state).uid}'),
                  GradientButton(
                    title: 'Sign out',
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            SignOutButtonClicked(),
                          );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
