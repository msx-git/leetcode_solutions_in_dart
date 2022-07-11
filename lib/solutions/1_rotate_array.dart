// Solution - 1
void rotate_1(List<int> nums, int k) {
  if (k > nums.length) {
    k = k % nums.length;
  }

  List<int> result = List.filled(nums.length, 0);
  for (int i = 0; i < k; i++) {
    result[i] = nums[nums.length - k + i];
  }

  int j = 0;
  for (int i = k; i < nums.length; i++) {
    result[i] = nums[j];
    j++;
  }

  List.copyRange(nums, 0, result, 0);
  print(nums);
}

void rotate_2() {}

void rotate_3() {}
