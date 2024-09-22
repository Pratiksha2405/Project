import 'dart:io';
import 'dart:math';


bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int sum = 0;
  
  
  int numberOfDigits = originalNumber.toString().length;
  
  
  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numberOfDigits).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isArmstrongNumber(number)) {
    print("$number is an Armstrong Number.");
  } else {
    print("$number is not an Armstrong Number.");
  }
}
