class CounterState {
  final int counter;

  CounterState({required this.counter});
}

class InitialState extends CounterState {
  InitialState() : super(counter: 0);
}
