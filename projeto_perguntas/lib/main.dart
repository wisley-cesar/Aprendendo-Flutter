import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'perguntas': 'Qual é a comida preferida do Wisley César?',
      'respostas': [
        {'texto': 'Lasanha', 'pontuacao': 1},
        {'texto': 'Pizza', 'pontuacao': 10},
        {'texto': 'Hamburger', 'pontuacao': 2},
        {'texto': 'Batata Frita', 'pontuacao': 3},
      ],
    },
    {
      'perguntas': 'Qual é a cor favorita do Wisley César?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 3},
        {'texto': 'Preto', 'pontuacao': 2},
        {'texto': 'Roxo', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 1},
      ]
    },
    {
      'perguntas': 'Qual é o Carro favorito do Wisley César?',
      'respostas': [
        {'texto': 'Porsche 911 gt3 rs', 'pontuacao': 2},
        {'texto': 'Ferrari 488 pista', 'pontuacao': 1},
        {'texto': 'Lamborghini huracan', 'pontuacao': 10},
        {'texto': 'Lamborghini aventador svj', 'pontuacao': 3},
      ],
    },
    {
      'perguntas': 'Qual é o Sport Favorito do Wisley César?',
      'respostas': [
        {'texto': 'Basquete', 'pontuacao': 1},
        {'texto': 'BMX', 'pontuacao': 10},
        {'texto': 'Futebol', 'pontuacao': 3},
        {'texto': 'MotoCross', 'pontuacao': 2},
      ],
    },
    {
      'perguntas': 'Qual é o Animal Favorito do Wisley César?',
      'respostas': [
        {'texto': 'Canhorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 1},
        {'texto': 'Cavalo', 'pontuacao': 3},
        {'texto': 'Cobra', 'pontuacao': 2},
      ],
    },
    {
      'perguntas': 'Qual é o Time do Coração do Wisley César?',
      'respostas': [
        {'texto': 'Real Madri', 'pontuacao': 3},
        {'texto': 'Flamengo', 'pontuacao': 10},
        {'texto': 'Al Nassar', 'pontuacao': 2},
        {'texto': 'Barcelona', 'pontuacao': 0},
      ],
    },
    {
      'perguntas': 'Qual é o maior idolo do Wisley César?',
      'respostas': [
        {'texto': 'Neymar', 'pontuacao': 3},
        {'texto': 'Gabi Gol', 'pontuacao': 1},
        {'texto': 'Cristiano Ronaldo', 'pontuacao': 10},
        {'texto': 'Ronaldinho Gaucho', 'pontuacao': 2},
      ],
    },
    {
      'perguntas':
          'Qual é o País que o Wisley César tem Mais vontade de Conhecer?',
      'respostas': [
        {'texto': 'Estados Unidos', 'pontuacao': 3},
        {'texto': 'Alemanha', 'pontuacao': 2},
        {'texto': 'Portugal', 'pontuacao': 1},
        {'texto': 'Canadá', 'pontuacao': 10},
      ],
    },
  ];
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        // ele só vai mudar a mensagem se a gente colocar ele dentro de um set state.
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reinicarOQuiz() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
    print(_pontuacaoTotal);
  }

  @override
  Widget build(BuildContext context) {
    // pegando da nossa lista de Map so o valor da chave respostas

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                quandoResponder: _responder)
            : Resultado(_pontuacaoTotal, _reinicarOQuiz),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}




