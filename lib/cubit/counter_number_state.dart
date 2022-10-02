part of 'counter_number_cubit.dart';

@immutable
abstract class CounterNumberState {
  final int number;
  const CounterNumberState({required this.number});
}

class CounterNumberInitial extends CounterNumberState {
  const CounterNumberInitial({required super.number});
}

class CounterNumberChanged extends CounterNumberState {
  const CounterNumberChanged({required super.number});
}
