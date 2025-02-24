import 'dart:math';

class GeradorNumeros {
  static int gerarNumeroAleatorio(int maxNumber) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(maxNumber);
  }
}
