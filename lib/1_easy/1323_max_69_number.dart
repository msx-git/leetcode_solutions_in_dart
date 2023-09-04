class Solution {
  int maximum69Number(int num) {
    String numStr = num.toString();

    int index = numStr.indexOf('6');

    if (index != -1) {
      numStr = numStr.replaceFirst('6', '9');
    }

    return int.parse(numStr);
  }
}

void main(){
  var s = Solution();

  print(s.maximum69Number(96996966));

}