import 'package:flutter/material.dart';
import 'heatmap.dart';
import 'pulldown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 165, 239),
          title: const Text('Festflow'),
        ),
        body: Column(
          children: [
            const Pulldown(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: const Heatmap(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
