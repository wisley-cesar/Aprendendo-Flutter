import 'package:calculadora/components/teclado.dart';
import 'package:calculadora/components/tela.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculadora(),
      theme: ThemeData.dark(),
    );
  }
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('122'),
          Teclado(),
        ],
      ),
    );
  }
}
