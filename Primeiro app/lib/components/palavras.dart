import 'dart:math';

class Palavras {
  String generateRandomWordPair() {
    final adjetivos = [
      'feliz',
      'triste',
      'rápido',
      'lento',
      'grande',
      'pequeno',
      'azul',
      'vermelho'
    ];

    final random = Random();
    final adjetetivo = adjetivos[random.nextInt((adjetivos.length))];

    return adjetetivo;
  }
}
