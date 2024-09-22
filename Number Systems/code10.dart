import 'dart:io';
List<int> generateFibonacci(int n) {
  List<int> series = [];
  if (n <= 0) return series;
  int a = 0;
  int b = 1;
  series.add(a);

  if (n > 1) {
    
    series.add(b);

    
    for (int i = 2; i < n; i++) {
      int next = a + b;
      series.add(next);
      a = b;
      b = next;
    }
  }

  return series;
}

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> fibonacciSeries = generateFibonacci(n);

  print("Fibonacci Series: ${fibonacciSeries.join(', ')}");
}
