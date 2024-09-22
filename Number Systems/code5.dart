import 'dart:io';
bool isPalindrome(int number) {
  String original = number.toString();
  String reversed = original.split('').reversed.join('');
  return original == reversed;
}

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (isPalindrome(number)) {
    print("$number is a Palindrome Number.");
  } else {
    print("$number is not a Palindrome Number.");
  }
}
