import 'package:flutter/material.dart';
import 'heatmap.dart';
import 'pulldown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedFestival = "Tomorrowland";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 5, 165, 239),
          title: const Text('Festflow'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Pulldown(
                onFestivalChanged: (festival) {
                  setState(() {
                    selectedFestival = festival;
                  });
                },
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Heatmap(festival: selectedFestival),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
