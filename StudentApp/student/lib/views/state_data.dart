import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  String message = "#";
  void newCity(String name) {
    message = name;
    notifyListeners();
  }
}
