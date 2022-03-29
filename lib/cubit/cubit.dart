import 'package:bloc/bloc.dart';
import 'package:flutter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;
  void changePlus() {
    counter++;
    emit(CounterPlusState(counter));
  }

  void changeMains() {
    counter--;
    emit(CounterMinusState(counter));
  }

  void changeButton() {
    counter = 0;
    emit(CounterButtonNavState(counter));
  }
}
