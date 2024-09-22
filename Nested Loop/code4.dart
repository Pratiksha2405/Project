import 'dart:io';


void printPattern(int rows) {
  int number = 1; 


  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < rows; j++) {
      stdout.write('${number.toRadixString(2)} '); 
      number++; 
    }
    
    print('');
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
