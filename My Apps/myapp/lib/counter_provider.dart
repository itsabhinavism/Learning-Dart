import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  ///getValue
  int getCount() => _count;

  ///events
  void incrementCount(int value) {
    _count += value;
    notifyListeners();
  }

  void decrementCount() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
