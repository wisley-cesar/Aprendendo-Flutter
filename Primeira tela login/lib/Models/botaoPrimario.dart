import 'package:flutter/material.dart';

class BotaoPrimario extends StatelessWidget {
  String text;
  BotaoPrimario({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 1000,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: Color.fromARGB(255, 164, 205, 117),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
