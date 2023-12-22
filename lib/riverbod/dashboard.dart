import 'package:flutter/material.dart';
import 'package:state_management/provider/counter2.dart';
import 'counter1.dart';
class DashBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 400,
        width: 400,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text("DashBoard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),),
  SizedBox(height: 10,),
  Expanded(
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Counter1(),
      ],
    ),
  ),
],
        ),
      ),
    );
  }
}
