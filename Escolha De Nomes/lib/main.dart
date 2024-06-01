import 'package:flutter/material.dart';
import 'package:teste/home.dart';

main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plavras',
      home: Home(title: 'Escolha De nomes'),
      debugShowCheckedModeBanner: false,
    );
  }
}
