import 'package:flutter/material.dart';

class Global extends ChangeNotifier {
  String _name = "?";

  void clearName() {
    _name = "";
    notifyListeners();
  }

  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  String get getName => _name;
}
