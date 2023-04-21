part of 'counter_app_bloc.dart';

abstract class CounterAppEvent {}


class IncrementEvent extends CounterAppEvent{}
class DecrementEvent extends CounterAppEvent{}