class Solution {
  int findDuplicate(List<int> nums) {
    var repeated = {};

    for (var i in nums) {
      if (repeated.containsKey(i)) {
        repeated[i] = repeated[i]! + 1;
        return i;
      } else {
        repeated[i] = 1;
      }
    }
    return 0;
  }
}

void main() {
  var s = Solution();

  final list1 = [4, 2, 1, 7, 5, 3, 6, 7];
  final list2 = [2, 8, 1, 4, 6, 3, 5, 4];

  print('${s.findDuplicate(list1)} is repeated in the list: $list1');
  print('${s.findDuplicate(list2)} is repeated in the list: $list2');
}
