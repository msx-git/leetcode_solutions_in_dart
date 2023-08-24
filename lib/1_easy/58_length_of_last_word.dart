class Solution {
  int lengthOfLastWord(String s) {
    return s.trim().split(' ').last.length;
  }
}

void main() {
  var s = Solution();

  print('${s.lengthOfLastWord('   fly me   to   the moon  ')}');
}
