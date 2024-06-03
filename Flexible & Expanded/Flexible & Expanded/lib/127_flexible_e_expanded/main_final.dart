import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible & Expanded',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible & Expanded'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 100,
            child: const Text(
                'Item 1 -pretty big!'), // nesse caso o container vai ter o tamanho nessesario do texto ou seja de acordo com o texto ele vai almentando
            color: Colors.red,
          ),
          Flexible(
            flex:
                6, // o flex ele vai dividir o espaço me branco e vai ocupar o numero que você deseja que nesse caso é 6
            fit: FlexFit.tight, // o .tight ele pega todo o espaço em branco.
            //fit: FlexFit.loose, // ja o .loose só vai pegar o tamanho nessesario para caber o texto. Ele já é padrão 
            child: Container(
              height: 100,
              child: const Text('Item 2'),
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1, // aqui el vai pefar o um da divisão do espaço em branco
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: const Text('Item 3'),
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
