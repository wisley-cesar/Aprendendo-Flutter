import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Tela extends StatelessWidget {
  final String text;
  Tela({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Center(
          child: AutoSizeText(
    
            text,
            maxFontSize: 80,
            minFontSize: 20,
            maxLines: 1,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
