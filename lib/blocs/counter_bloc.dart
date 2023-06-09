import 'package:counter/events/counter_event.dart';
import 'package:counter/states/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<IncrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter + 1)));
    on<DecrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter - 1)));
  }
}
