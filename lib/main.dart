import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'heatmap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),

              child: const Text("hier kan je de festivals kiezen"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Heatmap(),
              ),
            ),
          ],
        ),

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 165, 239),
          title: Text('Festflow'),
        ),
      ),
    );
  }
}
