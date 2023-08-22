class Solution {
  int strStr(String haystack, String needle) {
    if (needle.length > haystack.length) {
      return -1;
    }

    for (int i = 0; i <= haystack.length - needle.length; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  var s = Solution();

  print(s.strStr('sadbutsad', 'but'));
}
