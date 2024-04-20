import 'dart:io';

void main(){
print("hola! bienbenido al calculador de años");
print("Escribe tu nombre");
String? nameImput= stdin.readLineSync();
print("Un gusto conocerte $nameImput");
print("Escribe tu fecha de nacimiento en formato dd/mm/yyyy: ");
String? birthayImput = stdin.readLineSync();
DateTime? dateConverted= _convertTodateTime(birthayImput!);
if(dateConverted==null){
print("La fecha de nacimineto es invalidad, nos enviaste $birthayImput");
return;

}
var person=Person(
name: nameImput,
birthay: dateConverted,
age: DateTime.now().year - dateConverted.year,

);
print("Tu nombre es: ${person.name}");
print("Tu fecha de nacimiento es: ${person.birthay}");
print("Tu edad es: ${person.age} años!");

}

DateTime?_convertTodateTime(String date){
List<String> parts = date.split("/");
if(parts.length!=3) return null;
return DateTime.tryParse("${parts[2]}-${parts[1]}-${parts[0]}");

}

class Person{
  final String? name;
  final DateTime? birthay;
  final int? age;
  Person({this.name, this.birthay, this.age});
}