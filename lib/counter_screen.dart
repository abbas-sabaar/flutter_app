import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/cubit.dart';
import 'package:flutter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, stats) {
          if (stats is CounterMinusState) {
            print('Minus State ${stats.counter}');
          }
          if (stats is CounterPlusState) {
            print('Plus State ${stats.counter}');
          }
          if (stats is CounterButtonNavState) {
            print('Button State ${stats.counter}');
          }
        },
        builder: (context, stats) {
          CounterCubit cubit = CounterCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('appbar'),
              actions: [
                Icon(
                  Icons.ac_unit,
                ),
              ],
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      cubit.changeMains();
                    },
                    child: Text(
                      'MINES',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '${cubit.counter}',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.changePlus();
                    },
                    child: Text(
                      'PLUS',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.settings_backup_restore,
              ),
              onPressed: () {
                cubit.changeButton();
              },
            ),
          );
        },
      ),
    );
  }
}
