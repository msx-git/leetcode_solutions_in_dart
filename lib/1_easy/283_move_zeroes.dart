class Solution {
  void moveZeroes(List<int> nums) {
    int left = 0;
    int right = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[right] != 0) {
        var temp = nums[right];
        nums[right] = nums[left];
        nums[left] = temp;
        right++;
        left++;
      } else if (nums[right] == 0) {
        right++;
      }
    }
  }
}

void main() {
  var s = Solution();

  var list1 = [0, 1, 4, 0, 2, 7, 0, 9, 0];
  s.moveZeroes(list1);
  print(list1);

  var list2 = [0, 0, 0, 1, 2, 4, 0, 8, 9];
  s.moveZeroes(list2);
  print(list2);

}
