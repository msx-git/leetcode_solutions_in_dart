class Solution {
  bool isHappy(int n) {
    Set<int> encounteredNumbers = {};

    while (n != 1) {
      int sum = calculateSumOfSquaresOfDigits(n);
      if (encounteredNumbers.contains(sum)) {
        return false; // Cycle detected
      }
      encounteredNumbers.add(sum);
      n = sum;
    }

    return true; // n eventually becomes 1
  }

  int calculateSumOfSquaresOfDigits(int num) {
    int sum = 0;
    while (num > 0) {
      int digit = num % 10;
      sum += digit * digit;
      num ~/= 10; // Integer division in Dart
    }
    return sum;
  }
}
