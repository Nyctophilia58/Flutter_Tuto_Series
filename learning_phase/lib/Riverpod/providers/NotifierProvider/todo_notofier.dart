import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// NOTIFIER: Holds the data and business logic
class TodoNotifier extends Notifier<List<String>> {

  // sets the initial value of 'state'
  @override
  List<String> build() {
    return ['Buy Milk', 'Drink Water'];
  }

  void addTodo(String newTask) {
    // Create a new list so Riverpod knows the state changed
    state = [...state, newTask];
  }

  void removeTodo(String task) {
    state = state.where((item) => item !=task).toList();
  }
}