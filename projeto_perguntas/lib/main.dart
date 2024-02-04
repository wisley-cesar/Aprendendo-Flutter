import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void respnder() {
    setState(() {
      // ele só vai mudar a mensagem se a gente colocar ele dentro de um set state.
      perguntaSelecionada++;
      
    });
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é sua cor favoriata?',
      'Qual é seu Sport Favorito?',
      'Qual é seu Animal Favorito?',
      'Qual é seu Time do Coração?',
      'Qual é seu idolo?',
      'Qual é seu maior sonho?',
      'Qual é seu é sua comida preferida?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Respota 1'),
              onPressed: respnder,
            ),
            ElevatedButton(
              child: Text('Respota 2'),
              onPressed: respnder,
            ),
            ElevatedButton(
              child: Text('Respota 3'),
              onPressed: respnder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
