import 'package:flutter/material.dart';

class TextTitulo extends StatelessWidget {
  final String text;
  const TextTitulo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(0, 242, 242, 242),
      elevation: 7,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
