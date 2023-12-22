import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/getX/controllers/counter_provider.dart';

import '../counter_bloc.dart';
import 'dashboard.dart';

class CounterBPro extends StatelessWidget {
  CounterBPro({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();

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
          context.read<CounterBloc>().increament();
        },
      ),
    );
  }
}
