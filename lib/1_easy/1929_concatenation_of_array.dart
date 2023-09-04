class Solution {
  List<int> getConcatenation(List<int> nums) {
    return [...nums, ...nums];
  }
}

void main(){
  var s = Solution();
  final list = [1,2,3];
  final list3 = s.getConcatenation(list);
  print(list3);
}