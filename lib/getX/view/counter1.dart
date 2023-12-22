import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:get/get.dart';
import 'package:state_management/getX/controllers/counter_provider.dart';

class Counter1 extends StatelessWidget {
 // final CounterController _counterController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 100,
          width: 100,
          child: GetX<CounterController>(
            builder:(_counterController)=> Center(
                child: Text(
              _counterController.counter.value.toString(),
              style: TextStyle(fontSize: 60),
            )),
          )),
    );
  }
}
