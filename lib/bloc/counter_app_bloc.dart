import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'counter_app_event.dart';
part 'counter_app_state.dart';

class CounterAppBloc extends Bloc<CounterAppEvent, CounterAppState> {
  CounterAppBloc() : super(const CounterAppInitial()) {
    on<IncrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterAppIncrement(state.counterValue+1));
    });
    on<DecrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterAppDecrement(state.counterValue-1));
    });
  }
}
