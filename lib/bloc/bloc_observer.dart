import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';


class MyBlocObserver extends BlocObserver{

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    if (kDebugMode) {
      print(event);
    }
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    if (kDebugMode) {
      print(change);
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement
    if (kDebugMode) {
      print(error);
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    if (kDebugMode) {
      print(transition);
    }
    super.onTransition(bloc, transition);
  }
  
  
}