import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:state_management/getX/controllers/counter_provider.dart';
import 'package:bloc/bloc.dart';
import '../counter_bloc.dart';

class Counter1 extends StatelessWidget {
 // final CounterController _counterController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 100,
          width: 100,
          child:BlocBuilder<CounterBloc, int>(
            builder:(context ,count)=> Center(
                child: Text(
              count.value.toString(),
              style: TextStyle(fontSize: 60),
            )),
          )),
    );
  }
}
