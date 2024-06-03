import 'package:flutter/material.dart';

class TextSubtitulo extends StatelessWidget {
  final String text;
  const TextSubtitulo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 10,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
