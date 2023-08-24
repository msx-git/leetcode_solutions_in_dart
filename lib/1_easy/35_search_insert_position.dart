class Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return left;

  }
}

void main(){

  var s  = Solution();

  final list = [1,3,5,6];

  print(s.searchInsert(list, 5));
  print(s.searchInsert(list, 2));
  print(s.searchInsert(list, 7));



}
