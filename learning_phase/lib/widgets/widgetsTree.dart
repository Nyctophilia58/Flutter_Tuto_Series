import 'package:flutter/material.dart';
import 'package:learning_phase/widgets/textWidget.dart';
import 'imageWidget.dart';

class WidgetsTree extends StatelessWidget {
  const WidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Widgets Tree",
              style: TextStyle(
                fontSize: 50,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ImageWidget(),
                          ),
                        );
                      },
                      child: const Text("Image Widget"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TextWidget(),
                          ),
                        );
                      },
                      child: const Text("Text Widget"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}