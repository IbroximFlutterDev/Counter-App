part of 'counter_app_bloc.dart';

class CounterAppState extends Equatable {
  final int counterValue;

  const CounterAppState({required this.counterValue});

  @override
  List<Object?> get props => [counterValue];
}

class CounterAppInitial extends CounterAppState {
  const CounterAppInitial() : super(counterValue: 0);
}

class CounterAppIncrement extends CounterAppState {
  const CounterAppIncrement(int incrementedValue)
      : super(counterValue: incrementedValue);
}

class CounterAppDecrement extends CounterAppState {
  const CounterAppDecrement(int decrementedValue)
      : super(counterValue: decrementedValue);
}
