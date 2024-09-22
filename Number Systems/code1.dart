import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isPerfectNumber(number)) {
    print("$number is a Perfect Number");
  } else {
    print("$number is not a Perfect Number.");
  }
}

bool isPerfectNumber(int number) {
  if (number <= 0) return false;

  int sum = 0;

  
  for (int i = 1; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      sum += i;
    }
  }

  
  return sum == number;
}
