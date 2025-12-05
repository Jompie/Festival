import 'package:flutter/material.dart';

class Pulldown extends StatefulWidget {
  final Function(String) onFestivalChanged;

  const Pulldown({super.key, required this.onFestivalChanged});

  @override
  State<Pulldown> createState() => _PulldownState();
}

class _PulldownState extends State<Pulldown> {
  final List<String> festivals = [
    'Tomorrowland',
    'Lowlands',
    'Mysteryland',
    'Defqon1',
  ];

  String? selectedFestival;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: selectedFestival,
        hint: const Text("Kies een festival"),
        isExpanded: true,
        underline: SizedBox(),
        items: festivals.map((festival) {
          return DropdownMenuItem(value: festival, child: Text(festival));
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedFestival = value;
          });

          widget.onFestivalChanged(value!);
        },
      ),
    );
  }
}
