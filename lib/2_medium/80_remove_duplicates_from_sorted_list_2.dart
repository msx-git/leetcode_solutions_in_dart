class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) {
      return nums.length;
    }

    int slow = 2;
    int fast = 2;

    while (fast < nums.length) {
      if (nums[fast] != nums[slow - 2]) {
        nums[slow] = nums[fast];
        slow++;
      }
      fast++;
    }

    return slow;
  }
}

void main() {
  var s = Solution();
  final nums = [1, 1, 1, 2, 2, 3];
  print(s.removeDuplicates(nums));
}

// Input: nums = [1,1,1,2,2,3]
// Output: 5, nums = [1,1,2,2,3,_]
// Explanation: Your function should return k = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively.
// It does not matter what you leave beyond the returned k (hence they are underscores).
