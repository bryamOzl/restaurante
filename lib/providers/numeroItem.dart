import 'package:flutter/material.dart';

class NumeroItem with ChangeNotifier {
  int _numeroItems = 0;

  int get numeroItems {
    return _numeroItems;
  }

  set setnItems(int numero) {
    this._numeroItems = numero;
    notifyListeners();
  }
}
