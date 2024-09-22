import 'dart:io';


void printPattern(int rows) {
  int current = 1; 
  
  
  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < rows; j++) {
      stdout.write('$current '); 
      current++; 
    }
    
    if (i >= 2) {
      current += i; 
    }
  
    print('');
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
