import 'package:flutter/material.dart';
import 'package:teste/Models/botaoPrimario.dart';
import 'package:teste/Models/botaoSecudario.dart';
import 'package:teste/Models/inputs.dart';
import 'package:teste/Models/textSubititulo.dart';
import 'package:teste/Models/textTitulo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.pinkAccent,
            ],
          ),
        ),
        height: 900,
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const TextTitulo(text: 'Login'),
              const SizedBox(height: 50),
              const TextSubtitulo(
                  text: 'Preencha os Campos Abaixo com seus dados de acesso.'),
              const SizedBox(height: 70),
              const Inputs(
                text: 'Digite seu E-mail',
                tamparInput: false,
              ),
              const SizedBox(height: 30),
              const Inputs(
                text: 'Digite sua Senha',
                tamparInput: true,
              ),
              const SizedBox(height: 50),
              BotaoPrimario(text: 'Acesar'),
              const SizedBox(height: 20),
              Container(
                child: BotaoSecundario(text: 'Criar minha conta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
