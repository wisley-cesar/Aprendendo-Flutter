import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String text;
  const Botao({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
