import 'dart:io';

///Create parameter
String selection;
String inTemp;
int temp;

dynamic tempConverter() {
  do {
    print(
        'Select temperature converter "A" convert celsius to fahrenheit and "B" convert fahrenheit to celsius');
    selection = stdin.readLineSync().toUpperCase();
  } while (selection != 'A' &&
      selection !=
          'B'); //Exit loop statement when program detact charater A OR B

  print('Enter the starting temperature: ');
  inTemp = stdin.readLineSync(); // read keyboard.
  temp = int.parse(inTemp); // convert parameter to integer

  // Create contor flow statment that  switch case A and B.
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
