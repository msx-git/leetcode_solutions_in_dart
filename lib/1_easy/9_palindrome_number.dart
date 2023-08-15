class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x != 0 && x % 10 == 0)) {
      return false;
    }


    int halfReversed = 0;

    while (x > halfReversed) {
      halfReversed = halfReversed * 10 + x % 10;
      print(halfReversed);
      x = x ~/ 10;
    }

    return x == halfReversed || x == halfReversed ~/ 10;
  }
}



void main() {
  final s = Solution();

  int number = 123454321;
  int number2 = 1234014321;

  print('$number is palindrome: ${s.isPalindrome(number)}');
  print('$number2 is palindrome: ${s.isPalindrome(number2)}');
}
