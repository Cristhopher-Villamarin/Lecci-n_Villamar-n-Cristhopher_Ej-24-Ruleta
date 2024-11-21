import 'dart:math';

class Ruleta {
  List<int> numerosGenerados = [];
  double porcentajePares = 0;
  double porcentajeImpares = 0;
  double porcentajeCeros = 0;

  void generarNumeros() {
    numerosGenerados.clear();
    for (int i = 0; i < 5; i++) {
      numerosGenerados.add(Random().nextInt(37));
    }
    calcularPorcentajes();
  }

  void calcularPorcentajes() {
    int pares = 0;
    int impares = 0;
    int ceros = 0;

    for (var numero in numerosGenerados) {
      if (numero == 0) {
        ceros++;
      } else if (numero % 2 == 0) {
        pares++;
      } else {
        impares++;
      }
    }

    porcentajePares = (pares / 5) * 100;
    porcentajeImpares = (impares / 5) * 100;
    porcentajeCeros = (ceros / 5) * 100;
  }
}
