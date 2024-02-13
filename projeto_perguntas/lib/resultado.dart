import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() quandoRenicaiarQuiz;
  Resultado(this.pontuacao, this.quandoRenicaiarQuiz);

  String get fraseResulatado {
    if (pontuacao < 8) {
      return 'Você não Conhece Nada Do Wisley César';
    } else if (pontuacao < 18) {
      return 'Você conhece um pouco o Wisley César';
    } else if (pontuacao < 25) {
      return 'Legal você foi bem!';
    } else if (pontuacao < 35) {
      return 'O você ta no caminho certo';
    } else if (pontuacao < 45) {
      return 'Rapaz, tu é bom';
    } else if (pontuacao < 55) {
      return ' Gigante!';
    } else if (pontuacao < 65) {
      return 'Tu sabe muito sobre o Wisley César';
    } else if (pontuacao == 73) {
      return 'Pontução secreta, você não ganhou mas foi quase!!';
    } else if (pontuacao < 75) {
      return 'FOI QUASE!!! MAS UM POUCO TU GANHA O QUIZ!!!';
    } else if (pontuacao == 80) {
      return 'PARABÉNS VOCÊ CONHECE MUITO BEM O WISLEY CÉSAR VOCÊ ZEROU O JOGO!!';
    } else {
      return 'legal';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResulatado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoRenicaiarQuiz,
          style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(161, 106, 9, 101)),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 23,
            ),
          ),
        )
      ],
    );
  }
}
