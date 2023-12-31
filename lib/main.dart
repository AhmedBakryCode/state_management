import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:state_management/bloc/ui/Counterx_pro.dart';
import 'bloc/counter_bloc.dart';
import 'getX/controllers/counter_provider.dart';
import 'getX/view/Counterx_pro.dart';
import 'provider/provider.dart';
import 'package:bloc/bloc.dart';

import 'riverbod/Counterx_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     home: ProviderScope(child:CounterRPro()),
      // Bloc
     // home: BlocProvider(create: (_)=>CounterBloc(),child: CounterBPro(),),
      //Provider
      // home: ChangeNotifierProvider<Myprovider>(
      //     create: (__) =>Myprovider(), child: CounterPro()),
    );

  }
}

//class CounterPro extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  State<CounterPro> createState() => _CounterProState();
//}
//
// class _CounterProState extends State<CounterPro> {
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text("Demo"),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child:Container(
//
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             Provider.of<Myprovider>(context, listen: false).increament();
//
//           });
//         },
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
