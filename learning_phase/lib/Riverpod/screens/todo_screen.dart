import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../providers/NotifierProvider/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext, WidgetRef ref){

    // 1. Watch 'todoProvider' directly to get the List<String> data
    final todos = ref.watch(todoProvider);

    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // 2. Read '.notifier' to access your custom methods
                ref.read(todoProvider.notifier).removeTodo(todo);
              },
            ),
          );
        },
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(todoProvider.notifier).addTodo('New Task');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}