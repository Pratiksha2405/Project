import 'dart:io';


int sumOfProperDivisors(int number) {
  int sum = 0;
  for (int i = 1; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      sum += i;
    }
  }
  return sum;
}


bool isAbundantNumber(int number) {
  int sum = sumOfProperDivisors(number);
  return sum > number;
}

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isAbundantNumber(number)) {
    print("$number is an Abundant Number.");
  } else {
    print("$number is not an Abundant Number.");
  }
}
