import 'package:riverpod/riverpod.dart';
class Counter extends StateNotifier{
  Counter() : super(0);
  void increament ()=>state++;

}