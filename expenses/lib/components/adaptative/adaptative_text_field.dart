import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Function(String) onSubmitFrom;
  final TextInputType keyboardType;

  const AdaptativeTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.onSubmitFrom,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: controller,
              onSubmitted: onSubmitFrom,
              keyboardType: keyboardType,
              placeholder: label,
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            decoration: InputDecoration(labelText: label),
            keyboardType: keyboardType,
            onSubmitted: onSubmitFrom,
          );
  }
}
