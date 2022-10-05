import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Pilih Tipe Mobil Anda',
  'SUV',
  'MPV',
  'Sedan',
  'Hatchback',
  'Coupe',
  'Pickup',
  'Lainnya',
];

void main() => runApp(const Mobil());

class Mobil extends StatefulWidget {
  const Mobil({super.key});

  @override
  State<Mobil> createState() => _MobilState();
}

class _MobilState extends State<Mobil> {
  String dropdownValue = list.first;
  String mobil = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
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
