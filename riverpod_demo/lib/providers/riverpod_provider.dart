import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A [StateNotifier] class that manages a counter state.
class Counter extends StateNotifier<int> {
  Counter() : super(0);

  /// Increments the counter state by 1.
  void increment() {
    state++;
  }

  /// Decrements the counter state by 1.
  void decrement() {
    state--;
  }
}