import 'package:flutter/material.dart';

class Heatmap extends StatelessWidget {
  final String festival;

  const Heatmap({super.key, required this.festival});

  @override
  Widget build(BuildContext context) {
    final images = {
      'Tomorrowland': 'assets/Podium_ai2.png',
      'Lowlands': 'assets/Podium_ai3.png',
      'Mysteryland': 'assets/Podium_ai4.png',
      'Defqon1': 'assets/Podium_ai5.png',
    };

    final imagePath = images[festival] ?? 'assets/Podium_ai2.png';

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
