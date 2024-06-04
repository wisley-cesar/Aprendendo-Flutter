import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  const MyTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.blue,
      ),
    );
  }
}
