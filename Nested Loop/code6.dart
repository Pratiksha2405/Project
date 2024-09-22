import 'dart:io';


void printPattern(int rows) {
  int start = 12; 

  
  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < rows; j++) {
      stdout.write('${start + j * 6} '); 
    }
    
    print('');
    
    
    start += 18; 
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
