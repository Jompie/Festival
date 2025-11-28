import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
              color: Colors.lightBlue,
              height: 60,
              width: 400,
              child: const Text("hier kan je de festivals kiezen"),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlue,
              height: 700,
              width: 400,
              child: const Text("hier komt de map"),
            ),
          ],
        ),

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 165, 239),
          title: Text('Hier komt de naam van de app en logo'),
        ),
      ),
    );
  }
}
