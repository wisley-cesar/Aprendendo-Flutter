import 'package:calculadora/components/botao.dart';
import 'package:calculadora/components/botao_row.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  const Teclado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Expanded(
        child: Column(
          children: [
            BotaoRow(botoes: [
              Botao(text: '9'),
              
            ])
          ],
        ),
      ),
    );
  }
}
