import 'dart:io';
void printPattern(int rows) {
  int baseValue = 0; 

  
  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < rows; j++) {
      stdout.write('$baseValue '); 
      baseValue += (j + 1) * 2; 
    }
  
    print('');
    
    
    baseValue += 2 * (i + 1);
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
