class Solution {
  bool isValid(String s) {
    final Map<String, String> brackets = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    final List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      final char = s[i];

      if (brackets.containsValue(char)) {
        stack.add(char);
      } else if (brackets.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != brackets[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}

void main() {
  final s = Solution();

  String input1 = "()";
  String input2 = "()[]{}";
  String input3 = "(]";

  print('is valid " $input1 " : ${s.isValid(input1)}'); // Output: true
  print('is valid " $input2 " : ${s.isValid(input2)}'); // Output: true
  print('is valid " $input3 " : ${s.isValid(input3)}'); // Output: true
}
