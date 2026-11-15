import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_phase/Riverpod/providers/NotifierProvider/todo_notofier.dart';

// THE PROVIDER: Exposes the Notifier to the app
final todoProvider = NotifierProvider<TodoNotifier, List<String>>(() {
  return TodoNotifier();
});