import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste/components/displey.dart';
import 'package:teste/components/keybord.dart';
import 'package:teste/models/memory.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Column(
      children: [
        Displey(text: memory.value),
        Keybord(
          cb: _onPressed,
        )
      ],
    ));
  }
}
