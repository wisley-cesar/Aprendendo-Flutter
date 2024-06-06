import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Displey extends StatelessWidget {
  final String text;
  const Displey({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromARGB(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 80),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
