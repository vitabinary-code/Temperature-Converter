import 'dart:io';

String selection;
String inTemp;
int temp;

dynamic tempConverter() {
  do {
    print(
        'Select temperature converter "A" convert celsius to fahrenheit and "B" convert fahrenheit to celsius');
    selection = stdin.readLineSync().toUpperCase();
  } while (selection != 'A' && selection != 'B');

  print('Enter the starting temperature: ');
  inTemp = stdin.readLineSync();
  temp = int.parse(inTemp);

  switch (selection) {
    case 'A':
      print('$temp degrees Celsius is ${temp * 1.8 + 32} degress Fahrenheit');
      break;
    case 'B':
      print('$temp degress Fahrenheit is ${(temp - 32) / 1.8} degress Celsius');
      break;
    default:
      break;
  }
}
