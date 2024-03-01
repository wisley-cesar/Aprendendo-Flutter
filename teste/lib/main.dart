import 'package:flutter/material.dart';
import 'package:teste/Models/transction.dart';
import "package:intl/intl.dart";

main() => runApp(MytesteApp());

class MytesteApp extends StatelessWidget {
  const MytesteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyhomeTest(),
      theme: ThemeData.dark(),
    );
  }
}

class MyhomeTest extends StatelessWidget {
  MyhomeTest({super.key});

  final _transction = [
    Transction(
      id: 'T1',
      title: 'Aluguel',
      value: 2000.00,
      date: DateTime.now(),
    ),
    Transction(
      id: 'T2',
      title: 'Compra o Ipad',
      value: 4300.12,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Despesas Pessoais',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: const Card(
              child: Text(
                'Grafico',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              color: Colors.purple,
              elevation: 5,
            ),
          ),
          Column(
              children: _transction.map((tr) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat('d MMM y').add_Hm().format(tr.date),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 160, 160, 159),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList()),
          Card(
            
          )
        ],
      ),
    );
  }
}
