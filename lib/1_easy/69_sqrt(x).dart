class Solution {
  int mySqrt(int x) {
    if (x == 0) {
      return 0;
    }

    int left = 1;
    int right = x;
    int result = 0;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      int midSquared = mid * mid;

      if (midSquared <= x) {
        left = mid + 1;
        result = mid;
      } else {
        right = mid - 1;
      }
    }

    return result;
  }
}

void main() {
  var s = Solution();

  print(s.mySqrt(8));

}
