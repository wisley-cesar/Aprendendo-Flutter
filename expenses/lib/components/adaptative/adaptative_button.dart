import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdapativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Color color;
  final double size;
  const AdapativeButton({
    super.key,
    required this.size,
    required this.color,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            color: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(label),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color),
            ),
            child: Text(
              label,
              style: TextStyle(
                fontSize: size,
                color: Colors.white,
              ),
            ),
          );
  }
}
