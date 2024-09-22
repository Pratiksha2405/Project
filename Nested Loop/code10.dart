import 'dart:io';


void printPattern(int rows) {
  int start; 
  int increment; 

  
  for (int i = 0; i < rows; i++) {
    start = (i * (i + 1)) + 1; 

    
    for (int j = 0; j < rows; j++) {
      stdout.write('$start ');
      start += 6 + j; 
    }

    
    print('');
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
