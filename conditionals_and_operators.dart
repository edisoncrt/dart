

import 'dart:io';

void main() {
  print("Ingrese el primer numero: ");
  double? a = double.tryParse(stdin.readLineSync()!);
  print("Ingrese el segundo numero: ");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "indeterminado";
  if (a != null && b != null) {
    if (b != 0) {
      print("suma: ${a + b}, Resta: ${a - b}, Multiplicacion: ${a * b}, Division: ${a / b}");
    } else {
      print("Error: División por cero.");
    }
  } else {
    print("Por favor, Ingrese valores numericos validos.");
  }
}
