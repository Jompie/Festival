import 'package:flutter/material.dart';

class Heatmap extends StatelessWidget {
  const Heatmap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/Podium_ai2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
