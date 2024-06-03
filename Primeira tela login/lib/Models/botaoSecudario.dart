import 'package:flutter/material.dart';

class BotaoSecundario extends StatelessWidget {
  final String text;
  const BotaoSecundario({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 1000,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: Color.fromARGB(49, 5, 4, 4),
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            )),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
