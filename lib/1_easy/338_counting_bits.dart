class Solution {
  List<int> countBits(int n) {
    List<int> ans = List<int>.filled(n + 1, 0);

    for (int i = 1; i <= n; i++) {
      ans[i] = ans[i >> 1] + (i & 1);
    }

    return ans;
  }
}

void main() {
  var s = Solution();

  print(s.countBits(5)); // Output: [0, 1, 1, 2, 1, 2]
}
