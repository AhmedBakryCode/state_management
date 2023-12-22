import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 100,
          width: 100,
          child: Center(
              child: Text(
            "${Provider.of(context, listen: false).increment.counter.toString()}",
            style: TextStyle(fontSize: 60),
          ))),
    );
  }
}
