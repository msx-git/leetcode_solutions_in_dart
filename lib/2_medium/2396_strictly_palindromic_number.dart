class Solution {
  bool isStrictlyPalindromic(int n) {
    for (int base = 2; base <= n - 2; base++) {
      String representation = '';
      int temp = n;

      while (temp > 0) {
        representation = (temp % base).toString() + representation;
        temp ~/= base;
      }

      if (representation != representation.split('').reversed.join('')) {
        return false;
      }
    }

    return true;

  }
}

void main(){
  var s = Solution();

  print(s.isStrictlyPalindromic(2));
  print(s.isStrictlyPalindromic(9));

}
// An integer n is strictly palindromic if, for every base b between 2 and n - 2 (inclusive),
// the string representation of the integer n in base b is palindromic.
//
// Given an integer n, return true if n is strictly palindromic and false otherwise.
//
// A string is palindromic if it reads the same forward and backward.

// Input: n = 9
// Output: false
// Explanation: In base 2: 9 = 1001 (base 2), which is palindromic.
// In base 3: 9 = 100 (base 3), which is not palindromic.
// Therefore, 9 is not strictly palindromic so we return false.
// Note that in bases 4, 5, 6, and 7, n = 9 is also not palindromic.