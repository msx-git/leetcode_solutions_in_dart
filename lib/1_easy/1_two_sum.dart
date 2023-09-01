class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];
      int filler = target - num;

      if (map.containsKey(filler)) {
        return [map[filler]!, i];
      } else {
        map[num] = i;
      }
    }
    return [];
  }
}


void main() {
  var s = Solution();
  final nums = [1, 5, 3, 6, 7, 8, 9];
  final target = 10;
  print(s.twoSum(nums, target));
}
