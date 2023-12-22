import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/getX/controllers/counter_provider.dart';
import 'package:state_management/riverbod/provider.dart';
import 'package:state_management/riverbod/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dashboard.dart';
import 'riverpod/provider.dart';
class CounterRPro extends StatelessWidget {
  CounterRPro({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();
final counterprovider =StateNotifierProvider<Counter,int>((_)=>Counter());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: Center(
        child: DashBoard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read(counterprovider.notifier).increament();
        },
      ),
    );
  }
}
