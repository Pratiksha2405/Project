import 'dart:io';


void printPattern(int rows) {
  int currentNumber = 1;

  
  int maxNumber = rows * rows;

  
  for (int i = 0; i < rows; i++) {
    int start = rows - i;
    int end = start + rows;

    
    for (int j = start; j < end; j++) {
      stdout.write('${j + (i * (rows - 1))} ');
    }

    
    print('');
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
