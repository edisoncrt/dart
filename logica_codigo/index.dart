import 'dart:io';

import '../final.dart';

void main(List<String> args) {
  print('Escriba su nombre:');
  String nombre = stdin.readLineSync()!;
  print('¡Hola, $nombre! Por favor, elige un ejercicio del siguiente menú:');
  mostrarMenu();

  while (true) {
    String entrada = stdin.readLineSync()!.toLowerCase();
    if (entrada == 'q' || entrada == 'exit') {
      break; // salir del ciclo
    }
    if (int.tryParse(entrada) != null && int.parse(entrada) >= 1 && int.parse(entrada) <= 15) {
      switch (int.parse(entrada)) {
        case 1:
          Challenge1().run();
          break;
        case 2:
          Challenge2().run();
          break;
        case 3:
          Challenge3().run();
          break;
        case 4:
          Challenge4().run();
          break;
        case 5:
          Challenge5().run();
          break;
        case 6:
          Challenge6().run();
          break;
        case 7:
          Challenge7().run();
          break;
        case 8:
          Challenge8().run();
          break;
        case 9:
          Challenge9().run();
          break;
        case 10:
          Challenge10().run();
          break;
        case 11:
          Challenge11().run();
          break;
        case 12:
          Challenge12().run();
          break;
        case 13:
          Challenge13().run();
          break;
        case 14:
          Challenge14().run();
          break;
        case 15:
          Challenge15().run();
          break;
        default:
          print('Opción no válida. Por favor ingrese un número entre 1 y 15, o \'Q\' o \'exit\' para salir.');
          break;
      }
    } else {
      print('Opción no válida. Por favor ingrese un número entre 1 y 15, o \'Q\' o \'exit\' para salir.');
    }
  }
  print('¡Hasta luego!');
}

void mostrarMenu() {
  print('=== Menú ===');
  print('1. Determinar si un número es positivo, negativo o cero');
  print('2. Solicitar 2 números y mostrar el mayor entre ellos');
  print('3. Solicitar un número y mostrar su cuadrado');
  print('4. Solicitar el radio de un círculo y mostrar el área');
  print('5. Solicitar un número del 1 al 7 y mostrar el día de la semana');
  print('6. Solicitar el salario del usuario y calcular el impuesto (10% si excede los 1000)');
  print('7. Solicitar 2 números y realizar la división entre ellos');
  print('8. Calcular y mostrar la suma de los números impares entre 1 y 100');
  print('9. Solicitar 2 números fraccionarios y luego sumarlos');
  print('10. Solicitar una palabra y mostrarla en orden inverso');
  print('11. Mostrar el mayor de 5 números ingresados por el usuario');
  print('12. Determinar si una palabra ingresada por el usuario es un palíndromo');
  print('13. Determinar si un número ingresado por el usuario es par o impar');
  print('14. Ingresar un número entre 0 y 100 y determinar si está en el rango');
  print('15. Salir');
}
