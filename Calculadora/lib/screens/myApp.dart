import 'package:flutter/material.dart';
import 'package:teste/screens/calculadora.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Calculadora(),
    );
  }
}
