class Solution {
  String longestCommonPrefix(List<String> inputText) {
    if (inputText.isEmpty) {
      return "";
    }

    int minLen = inputText.map((s) => s.length).reduce((a, b) => a < b ? a : b);

    for (int i = 0; i < minLen; i++) {
      String char = inputText[0][i];
      for (String s in inputText) {
        if (s[i] != char) {
          return inputText[0].substring(0, i);
        }
      }
    }

    return inputText[0].substring(0, minLen);
  }
}

void main() {

  final s = Solution();

  List<String> str1 = ["flower", "flow", "flight"];
  print(str1);
  print('Longest common prefix: ${s.longestCommonPrefix(str1)}\n');  // Output: "fl"

  List<String> str2 = ["dog", "racecar", "car"];
  print(str2);
  print('Longest common prefix: ${s.longestCommonPrefix(str2)}');  // Output: ""
}