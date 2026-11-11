import 'package:flutter/material.dart';
import 'package:learning_phase/widgets/widgetsTree.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetsTree(),
      debugShowCheckedModeBanner: false,
    );
  }
}