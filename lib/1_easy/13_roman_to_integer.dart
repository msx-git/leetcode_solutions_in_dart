class Solution {
  int romanToInt(String s) {
    Map<String, int> romanValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;
    int prevValue = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      int value = romanValues[s[i]]!;

      if (value < prevValue) {
        result -= value;
      } else {
        result += value;
      }

      prevValue = value;
    }

    return result;
  }
}

void main() {

  final s = Solution();

  String input1 = "III";
  String input2 = "LVIII";
  String input3 = "MCMXCIV";

  print("$input1: ${s.romanToInt(input1)}");
  print("$input2: ${s.romanToInt(input2)}");
  print("$input3: ${s.romanToInt(input3)}");
}