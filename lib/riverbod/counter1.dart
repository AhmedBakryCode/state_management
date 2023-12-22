import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:state_management/getX/controllers/counter_provider.dart';
import 'package:bloc/bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'riverbod/Counterx_pro.dart';

class Counter1 extends HookWidget {
 // final CounterController _counterController=Get.find();
final count =useProvider(counterprovider);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 100,
          width: 100,
          child:Center(
                child: Text(
              count.toString(),
              style: TextStyle(fontSize: 60),
            )),
          )),
    );
  }
}
