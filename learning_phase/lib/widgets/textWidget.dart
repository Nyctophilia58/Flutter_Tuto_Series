import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
        backgroundColor: Colors.indigo,
      ),
      body: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.indigo,
          wordSpacing: 10,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blueAccent,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}