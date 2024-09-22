import 'dart:io';


void printPattern(int rows) {
  int start = 10; 
  
  
    for (int i = 0; i < rows; i++) {

    for (int j = 0; j < rows; j++) {
      stdout.write('$start ');
      start += 10; 

    print('');
    
    
    start += 20;
  }
}

void main() {
  print("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  printPattern(rows);
}
}
