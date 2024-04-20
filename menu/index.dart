import 'dart:io';

class Menu {
  static void mostrarMenu() {
    print("=== Menú ===");
    print("1. Determinar si un número es positivo, negativo o cero");
    print("2. Solicitar 2 números y mostrar el mayor entre ellos");
    print("3. Solicitar un número y mostrar su cuadrado");
    print("4. Solicitar el radio de un círculo y mostrar el área");
    print("5. Solicitar un número del 1 al 7 y mostrar el día de la semana");
    print("6. Solicitar el salario del usuario y calcular el impuesto (10% si excede los 1000)");
    print("7. Solicitar 2 números y realizar la división entre ellos");
    print("8. Calcular y mostrar la suma de los números impares entre 1 y 100");
    print("9. Solicitar 2 números fraccionarios y luego sumarlos");
    print("10. Solicitar una palabra y mostrarla en orden inverso");
    print("11. Mostrar el mayor de 5 números ingresados por el usuario");
    print("12. Determinar si una palabra ingresada por el usuario es un palíndromo");
    print("13. Determinar si un número ingresado por el usuario es par o impar");
    print("14. Ingresar un número entre 0 y 100 y determinar si está en el rango");
    print("15. Salir");

    stdout.write("Por favor, elige una opción: ");
    String input = stdin.readLineSync()!;
    // Aquí puedes continuar con la lógica del menú
  }
}

void main() {
  Menu.mostrarMenu();
}
