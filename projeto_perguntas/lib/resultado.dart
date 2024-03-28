import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() quandoRenicaiarQuiz;
  Resultado(this.pontuacao, this.quandoRenicaiarQuiz);

  String get fraseResulatado {
    if (pontuacao < 8) {
      return 'Você não Conhece Nada Do Wisley César \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 18) {
      return 'Você conhece um pouco o Wisley César \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 25) {
      return 'Legal você foi bem!\n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 35) {
      return 'O você ta no caminho certo\n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 45) {
      return 'Rapaz, tu é bom \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 55) {
      return ' Gigante! \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 65) {
      return 'Tu sabe muito sobre o Wisley César \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao == 73) {
      return 'Pontução secreta, você não ganhou mas foi quase!! \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao < 75) {
      return 'FOI QUASE!!! MAS UM POUCO TU GANHA O QUIZ!!! \n Sua pontuação foi = ${pontuacao}';
    } else if (pontuacao == 80) {
      return 'PARABÉNS VOCÊ CONHECE MUITO BEM O WISLEY CÉSAR VOCÊ ZEROU O JOGO!! \n Sua pontuação foi = ${pontuacao}';
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
              backgroundColor: const Color.fromARGB(161, 106, 9, 101)),
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
