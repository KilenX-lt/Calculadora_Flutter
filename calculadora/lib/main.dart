import 'package:calculadora/screens/contador_screen.dart';
import 'package:flutter/material.dart';

//import 'package:hello_word_app/Presentacion/screens/personalizar_screen.dart';
//import 'package:hello_word_app/Presentacion/screens/funciones_scren.dart';
//import 'package:hello_word_app/Presentacion/screens/guerra_serrano.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amberAccent),
      home: const ContadorScreen(),
    );
  }
}
