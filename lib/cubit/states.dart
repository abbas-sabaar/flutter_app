abstract class CounterState {}

class CounterInitialState extends CounterState {}

class CounterMinusState extends CounterState {
  final counter;

  CounterMinusState(this.counter);
}

class CounterPlusState extends CounterState {
  final counter;

  CounterPlusState(this.counter);
}

class CounterButtonNavState extends CounterState {
  final counter;

  CounterButtonNavState(this.counter);
}
