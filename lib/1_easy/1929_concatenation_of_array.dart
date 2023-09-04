class Solution {
  List<int> getConcatenation(List<int> nums) {
    return [...nums, ...nums];
  }
}

void main(){
  final list1 = [1,2,3];
  final list2 = [7,5,3,2,1];
  final list3 = [...list1, ...list2];
  print(list3);
}