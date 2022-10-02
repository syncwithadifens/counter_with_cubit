import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_number_state.dart';

class CounterNumberCubit extends Cubit<CounterNumberState> {
  CounterNumberCubit() : super(const CounterNumberInitial(number: 0));

  void increment() {
    emit(CounterNumberChanged(number: state.number + 1));
  }

  void decrement() {
    emit(CounterNumberChanged(number: state.number - 1));
  }
}
