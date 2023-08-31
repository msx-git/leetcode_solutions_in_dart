class Solution {
  int singleNumber(List<int> nums) {
    int x = 0;

    for (int num in nums) {
      x = x ^ num;
    }

    return x;
  }
}

void main() {
  var s = Solution();
  final nums = [1, 2, 4, 1, 5, 4, 5];
  print(s.singleNumber(nums));
}
