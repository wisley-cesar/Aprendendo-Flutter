import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final String text;
  final bool tamparInput;
  const Inputs({super.key, required this.text, required this.tamparInput});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(159, 0, 0, 0),
      ),
      child: Form(
        child: TextFormField(
          obscureText: tamparInput,
          cursorColor: Colors.pinkAccent,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: text,
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
