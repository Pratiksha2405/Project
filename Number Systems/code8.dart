import 'dart:io';

// Function to check if a number is a Duck Number
bool isDuckNumber(String number) {
  // Check if the number contains '0' and does not start with '0'
  return number.contains('0') && !number.startsWith('0');
}

void main() {
  print("Enter a number:");
  String number = stdin.readLineSync()!;

  if (isDuckNumber(number)) {
    print("$number is a Duck Number.");
  } else {
    print("$number is not a Duck Number.");
  }
}
