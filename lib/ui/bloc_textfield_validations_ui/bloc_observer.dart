import 'package:flutter_bloc/flutter_bloc.dart';

// To observe all the BloC

// Added on main.dart on line 10
class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    print('bloc: ${bloc.runtimeType} -- state: ${bloc.state}');
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    //
    super.onChange(bloc, change);
  }
}
