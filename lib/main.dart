import 'package:flutter/material.dart';
import 'package:jasaui/jasa/confirmationpage.dart';
import 'package:jasaui/jasa/jasa_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      theme: ThemeData(
        primaryColor: Color(0xFF55C1EF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => JasaView(),
        '/screen2': (context) => Konfirmasi(),
      },
    );
  }
}
