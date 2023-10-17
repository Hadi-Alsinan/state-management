import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners when the counter changes
  }

  void decrement() {
    _count--;
    notifyListeners(); // Notify listeners when the counter changes
  }
}