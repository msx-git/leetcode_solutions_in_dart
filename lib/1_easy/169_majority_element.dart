class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int max = 0;

    for (int i = 0; i < nums.length; i++) {
      if (count == 0) {
        max = nums[i];
        count++;
      } else if (nums[i] == max) {
        count++;
      } else if (nums[i] != max) {
        count--;
      }
    }

    count = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == max) {
        count++;
      }
    }

    if (count > nums.length / 2) {
      return max;
    }

    return 0;
  }
}

void main() {
  var s = Solution();

  final list = [2, 2, 1, 1, 1, 2, 2];

  print(s.majorityElement(list));
}
