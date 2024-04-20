void main() {
  Cuadrado cuadr = Cuadrado();
  cuadr.lado = 20;
  print("El area es: ${cuadr.area}");
  print("El Perimetro es: ${cuadr.perimetro}");
  print("El Lado es: ${cuadr.lado}");
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;
  double get perimetro => 2 * base! + 2 * altura!;
}

class Cuadrado extends Rectangulo {
  set lado(double value) {
    base = value;
    altura = value;
  }

  double get lado => base!;
}
