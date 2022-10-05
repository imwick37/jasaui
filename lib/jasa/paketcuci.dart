import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Standar',
  'Cuci Interior',
  'Semir Ban',
  'Waxing'
];

void main() => runApp(const CuciCar());

class CuciCar extends StatefulWidget {
  const CuciCar({super.key});

  @override
  State<CuciCar> createState() => _CuciCarState();
}

class _CuciCarState extends State<CuciCar> {
  String dropdownValue = list.first;
  String cuci = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 1,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
