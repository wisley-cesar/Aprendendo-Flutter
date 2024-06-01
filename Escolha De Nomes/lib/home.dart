import 'dart:math';
import 'package:flutter/material.dart';
import 'package:teste/lista_palavras.dart';

class Home extends StatefulWidget {
  final String title;
  Home({
    super.key,
    required this.title,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listaDeNomes = ListaDePalvras();
  int _numeroIndex = 0;
  bool _mostrarPalavra = false;
  bool mudarTema = false;
  _mudarNomes() {
    setState(() {
      var numeroRandom = Random();
      _numeroIndex = numeroRandom.nextInt(100);
      _mostrarPalavra = true;
    });
  }

  String _podeMudarNome() {
    return _mostrarPalavra ? listaDeNomes.nomes[_numeroIndex] : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'O que você acha desse Nome:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              _podeMudarNome(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => _mudarNomes(),
        child: Text(
          'Proximo Nome!',
        ),
      ),
    );
  }
}
