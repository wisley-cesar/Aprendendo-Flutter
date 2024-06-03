import 'package:calculadora/components/botao.dart';
import 'package:flutter/material.dart';

class BotaoRow extends StatelessWidget {
  final List<Botao> botoes;
  BotaoRow({super.key, required this.botoes});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: botoes.fold([], (list, botao) {
        return list;
      }),
    );
  }
}
