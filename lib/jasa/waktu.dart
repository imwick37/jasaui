import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Pilih Waktu Yang Anda Inginkan',
  '09.00',
  '10.00',
  '11.00',
  '12.00'
];

void main() => runApp(const Waktu());

class Waktu extends StatefulWidget {
  const Waktu({super.key});

  @override
  State<Waktu> createState() => _WaktuState();
}

class _WaktuState extends State<Waktu> {
  String dropdownValue = list.first;
  String waktu = '';

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
