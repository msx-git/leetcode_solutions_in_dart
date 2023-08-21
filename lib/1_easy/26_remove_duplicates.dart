class Solution{
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int uniqueCount = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[uniqueCount] = nums[i];
        uniqueCount++;
      }
    }

    return uniqueCount;
  }
}



void main() {

  var s = Solution();

  List<int> nums1 = [1, 1, 2];
  List<int> expectedNums1 = [1, 2];

  List<int> nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  List<int> expectedNums2 = [0, 1, 2, 3, 4];

  int k1 = s.removeDuplicates(nums1);
  int k2 = s.removeDuplicates(nums2);

  assert(k1 == expectedNums1.length);
  assert(k2 == expectedNums2.length);

  for (int i = 0; i < k1; i++) {
    assert(nums1[i] == expectedNums1[i]);
  }

  for (int i = 0; i < k2; i++) {
    assert(nums2[i] == expectedNums2[i]);
  }

  print("Test cases passed!");
}