class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i] += 1;
        return digits;
      }
      digits[i] = 0;
    }
    var newDigits = [1, ...digits];
    return newDigits;
  }
}

void main() {
  var s = Solution();

  final list = [9, 8, 2, 9];

  print(s.plusOne(list));
}
