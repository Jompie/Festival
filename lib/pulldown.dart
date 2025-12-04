import 'package:flutter/material.dart';

class Pulldown extends StatelessWidget {
  const Pulldown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text("hier kan je de festivals kiezen"),
    );
  }
}
