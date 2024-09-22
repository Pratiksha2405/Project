import 'dart:io';

void main() {
  print("Enter number of rows:");
  int rows = int.parse(stdin.readLineSync()!);

  for (int i = rows; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write("${i * j} ");  // Print the current row number multiplied by the position
    }
    print("");  // Move to the next line after each row
  }
}
