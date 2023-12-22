import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Myprovider with ChangeNotifier {
  int counter = 0;

  void increament() {
    counter++;
    notifyListeners();
  }
}
