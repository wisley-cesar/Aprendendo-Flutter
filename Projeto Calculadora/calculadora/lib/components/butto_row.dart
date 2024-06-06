import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, botao) {
          list.isEmpty
              ? list.add(botao)
              : list.addAll([SizedBox(width: 1), botao]);
          return list;
        }),
      ),
    );
  }
}
