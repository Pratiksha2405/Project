import 'dart:io';


void printPattern(int rows) {
  
  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < rows; j++) {
      
      int number = (rows - i) + j * rows;
      stdout.write('$number ');
    }

    print('');
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
