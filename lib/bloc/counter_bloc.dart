import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int>{
  CounterBloc() : super(0);
  void increament ()=>emit(state+1);

}