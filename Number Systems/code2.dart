import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print("$number is a prime Number.");
  } else {
    print("$number is not a prime Number.");
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false; 
    }
  }

  return true; 
}
