import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextoPricipal extends StatelessWidget {
  final String text;
  const TextoPricipal({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
