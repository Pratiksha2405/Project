import 'dart:io';
int factorial(int n) {
  if (n == 0 || n == 1) return 1;
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}


bool isStrongNumber(int number) {
  int originalNumber = number;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += factorial(digit);
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isStrongNumber(number)) {
    print("$number is a Strong Number.");
  } else {
    print("$number is not a Strong Number.");
  }
}
