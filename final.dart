import 'dart:io';
import 'menu/index.dart';

void main(List<String> args) {
  print('Escriba su nombre:');
  String nombre = stdin.readLineSync()!;
  print('¡Hola, $nombre! Por favor, elige un ejercicio del siguiente menú:');
  var menu = Menu();
  Menu.mostrarMenu();
}

class Challenge1 {
  void run() {
    stdout.write("Por favor, ingresa un número: ");
    String input = stdin.readLineSync()!;
    if (double.tryParse(input) != null) {
      double numero = double.parse(input);
      if (numero > 0) {
        print("El número es positivo.");
      } else if (numero < 0) {
        print("El número es negativo.");
      } else {
        print("El número es cero.");
      }
    }
  }
}

class Challenge2 {
  void run() {
    stdout.write("Por favor, ingresa el primer número: ");
    double numero1 = double.parse(stdin.readLineSync()!);

    stdout.write("Por favor, ingresa el segundo número: ");
    double numero2 = double.parse(stdin.readLineSync()!);

    if (numero1 > numero2) {
      print("El primer número ($numero1) es mayor que el segundo número ($numero2).");
    } else if (numero2 > numero1) {
      print("El segundo número ($numero2) es mayor que el primer número ($numero1).");
    }
  }
}

class Challenge3 {
  void run() {
    stdout.write("Por favor, ingresa un número: ");
    double numero = double.parse(stdin.readLineSync()!);

    double cuadrado = numero * numero;

    print("El cuadrado de $numero es: $cuadrado");
  }
}

class Challenge4 {
  void run() {
    stdout.write("Por favor, ingresa el radio del círculo: ");
    double radio = double.parse(stdin.readLineSync()!);

    double area = 3.1416 * radio * radio;

    print("El área del círculo con radio $radio es: $area");
  }
}

class Challenge5 {
  void run() {
    stdout.write("Por favor, ingresa un número entre 1 y 7: ");
    int numero = int.parse(stdin.readLineSync()!);

    String diaSemana = "";

    switch (numero) {
      case 1:
        diaSemana = "Lunes";
        break;
      case 2:
        diaSemana = "Martes";
        break;
      case 3:
        diaSemana = "Miércoles";
        break;
      case 4:
        diaSemana = "Jueves";
        break;
      case 5:
        diaSemana = "Viernes";
        break;
      case 6:
        diaSemana = "Sábado";
        break;
      case 7:
        diaSemana = "Domingo";
        break;
      default:
        print("Número ingresado no válido.");
        return;
    }

    print("El día correspondiente al número $numero es: $diaSemana");
  }
}

class Challenge6 {
  void run() {
    stdout.write("Por favor, ingresa tu salario: ");
    double salario = double.parse(stdin.readLineSync()!);

    if (salario > 1000) {
      double excedente = salario - 1000;
      double impuesto = excedente * 0.10;
      print("El impuesto a pagar es: $impuesto");
    }
  }
}

class Challenge7 {
  void run() {
    stdout.write("Por favor, ingresa el dividendo: ");
    double dividendo = double.parse(stdin.readLineSync()!);

    stdout.write("Por favor, ingresa el divisor: ");
    double divisor = double.parse(stdin.readLineSync()!);

    if (divisor != 0) {
      double resultado = dividendo / divisor;
      print("El resultado de la división es: $resultado");
    } else {
      print("Error: No se puede dividir entre cero.");
    }
  }
}

class Challenge8 {
  void run() {
    stdout.write("Por favor, ingresa un número entero positivo: ");
    int limiteSuperior = int.parse(stdin.readLineSync()!);

    int sumaImpares = 0;

    for (int i = 1; i <= limiteSuperior; i += 2) {
      sumaImpares += i;
    }

    print("La suma de los números impares entre 1 y $limiteSuperior es: $sumaImpares");
  }
}

class Challenge9 {
  void run() {
    print("Ingrese la primera fracción:");
    int numerador1 = pedirEntero("Numerador: ");
    int denominador1 = pedirEntero("Denominador: ");

    print("Ingrese la segunda fracción:");
    int numerador2 = pedirEntero("Numerador: ");
    int denominador2 = pedirEntero("Denominador: ");

    int nuevoNumerador = numerador1 * denominador2 + numerador2 * denominador1;
    int nuevoDenominador = denominador1 * denominador2;

    simplificarFraccion(nuevoNumerador, nuevoDenominador);

    print("La suma de las fracciones es: $nuevoNumerador/$nuevoDenominador");
  }

  int pedirEntero(String mensaje) {
    stdout.write(mensaje);
    return int.parse(stdin.readLineSync()!);
  }

  int calcularMCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  void simplificarFraccion(int numerador, int denominador) {
    int mcd = calcularMCD(numerador, denominador);
    numerador ~/= mcd;
    denominador ~/= mcd;
  }
}

class Challenge10 {
  void run() {
    stdout.write("Por favor, ingresa una palabra: ");
    String palabra = stdin.readLineSync()!;

    String palabraInversa = "";

    for (int i = palabra.length - 1; i >= 0; i--) {
      palabraInversa += palabra[i];
    }

    print("La palabra en orden inverso es: $palabraInversa");
  }
}

class Challenge11 {
  void run() {
    print("Por favor, ingresa tres números:");

    double numero1 = pedirNumero("Primer número: ");
    double numero2 = pedirNumero("Segundo número: ");
    double numero3 = pedirNumero("Tercer número: ");

    double promedio = (numero1 + numero2 + numero3) / 3;

    print("El promedio de los tres números es: $promedio");
  }

  double pedirNumero(String mensaje) {
    stdout.write(mensaje);
    return double.parse(stdin.readLineSync()!);
  }
}

class Challenge12 {
  void run() {
    print("Por favor, ingresa cinco números:");

    List<double> numeros = [];
    for (int i = 0; i < 5; i++) {
      numeros.add(pedirNumero("Número ${i + 1}: "));
    }

    double mayor = numeros.reduce((value, element) => value > element ? value : element);

    print("El mayor número ingresado es: $mayor");
  }

  double pedirNumero(String mensaje) {
    stdout.write(mensaje);
    return double.parse(stdin.readLineSync()!);
  }
}

class Challenge13 {
  void run() {
    stdout.write("Por favor, ingresa una palabra: ");
    String palabra = stdin.readLineSync()!.toLowerCase();

    bool esPalindromoResultado = esPalindromo(palabra);

    if (esPalindromoResultado) {
      print("La palabra ingresada es un palíndromo.");
    } else {
      print("La palabra ingresada no es un palíndromo.");
    }
  }

  bool esPalindromo(String palabra) {
    for (int i = 0; i < palabra.length ~/ 2; i++) {
      if (palabra[i] != palabra[palabra.length - i - 1]) {
        return false;
      }
    }
    return true;
  }
}

class Challenge14 {
  void run() {
    stdout.write("Por favor, ingresa un número: ");
    int numero = int.parse(stdin.readLineSync()!);

    if (esPar(numero)) {
      print("El número ingresado es par.");
    } else {
      print("El número ingresado es impar.");
    }
  }

  bool esPar(int numero) {
    return numero % 2 == 0;
  }
}

class Challenge15 {
  void run() {
    stdout.write("Por favor, ingresa un número: ");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 0 && numero <= 100) {
      print("El número ingresado está dentro del rango entre 0 y 100.");
    } else {
      print("El número ingresado no está dentro del rango entre 0 y 100.");
    }
  }
}
