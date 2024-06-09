import 'package:bloc_cubit/ui/bloc_weather_ui/data/bloc/weather_bloc.dart';
import 'package:bloc_cubit/ui/bloc_weather_ui/data/data_provider/weather_data_provider.dart';
import 'package:bloc_cubit/ui/bloc_weather_ui/data/repository/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/bloc_textfield_validations_ui/bloc_observer.dart';
import 'ui/bloc_textfield_validations_ui/pallate.dart';
import 'ui/bloc_weather_ui/presentation/screens/weather_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // For Cubit
    // return BlocProvider(
    //   create: (_) => CounterCubit(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const MyHomePage(title: 'Flutter Demo Home Page'),
    //   ),
    // );

    // For Bloc
    // return BlocProvider(
    //   create: (_) => CounterBloc(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const MyHomePageB(title: 'Flutter Demo Home Page'),
    //   ),
    // );

    // For both Cubit and Bloc
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(create: (_) => CounterCubit()),
    //     BlocProvider(create: (_) => CounterBloc()),
    //   ],
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const MyHomePageB(title: 'Flutter Demo Home Page'),
    //   ),
    // );

    // Todo using cubit
    // return BlocProvider(
    //   create: (context) => TodoCubit(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(
    //         seedColor: Colors.deepPurple,
    //       ),
    //       useMaterial3: true,
    //     ),
    //     routes: {
    //       '/': (context) => const CubitTodoListPage(),
    //       '/cubit-add-todo': (context) => const CubitAddTodoPage(),
    //       '/bloc-todo': (context) => const BlocTodoListPage(),
    //       '/bloc-add-todo': (context) => const BlocAddTodoPage(),
    //     },
    //   ),
    // );

    // bloc textfield validations
    // return BlocProvider(
    //   create: (context) => AuthBloc(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData.dark().copyWith(
    //       scaffoldBackgroundColor: Pallete.backgroundColor,
    //     ),
    //     routes: {
    //       '/': (context) => const LoginScreen(),
    //       '/home': (context) => const BlocAuthHomePage(),
    //     },
    //   ),
    // );

    // bloc weather app
    // We can use MultiRepositoryProvider for multiple repositories
    return RepositoryProvider(
      create: (context) => WeatherRepository(WeatherDataProvider()),
      // We can use MultiBlocProvider for multiple blocs
      child: BlocProvider(
        create: (context) => WeatherBloc(context.read<WeatherRepository>()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Pallete.backgroundColor,
          ),
          routes: {
            '/': (context) => const WeatherScreen(),
          },
        ),
      ),
    );
  }
}
