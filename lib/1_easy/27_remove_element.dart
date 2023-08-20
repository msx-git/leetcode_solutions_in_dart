int removeElement(List<int> nums, int val) {
  int k = 0; // Represents the length of the new array
  for (int num in nums) {
    if (num != val) {
      nums[k++] = num; // Overwrite the original array with non-val elements
    }
  }
  return k; // Return the length of the new array
}

void main() {
  List<int> nums1 = [3, 2, 2, 3];
  int val1 = 3;
  int expectedLength1 = 2;

  int k1 = removeElement(nums1, val1);
  assert(k1 == expectedLength1);

  List<int> nums2 = [0, 1, 2, 2, 3, 0, 4, 2];
  int val2 = 2;
  int expectedLength2 = 5;

  int k2 = removeElement(nums2, val2);
  assert(k2 == expectedLength2);
}