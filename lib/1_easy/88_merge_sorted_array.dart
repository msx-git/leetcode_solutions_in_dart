class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int index1 = m - 1; // Index for the last element in nums1
    int index2 = n - 1; // Index for the last element in nums2
    int mergedIndex =
        m + n - 1; // Index for the last position in the merged array

    while (index1 >= 0 && index2 >= 0) {
      if (nums1[index1] > nums2[index2]) {
        nums1[mergedIndex] = nums1[index1];
        index1--;
      } else {
        nums1[mergedIndex] = nums2[index2];
        index2--;
      }
      mergedIndex--;
    }

    // If there are remaining elements in nums2
    while (index2 >= 0) {
      nums1[mergedIndex] = nums2[index2];
      index2--;
      mergedIndex--;
    }
  }
}

void main() {
  var s = Solution();

  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  int m = 3;
  List<int> nums2 = [2, 5, 6];
  int n = 3;

  s.merge(nums1, m, nums2, n);
  print(nums1);
}
