// Definition for a binary tree node.

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) {
      return true;
    }

    if (p == null || q == null) {
      return false;
    }

    if (p.val != q.val) {
      return false;
    }

    return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
  }
}

void main() {
  var s = Solution();

  // Example 1
  TreeNode p1 = TreeNode(1);
  p1.left = TreeNode(2);
  p1.right = TreeNode(3);

  TreeNode q1 = TreeNode(1);
  q1.left = TreeNode(2);
  q1.right = TreeNode(3);

  print(s.isSameTree(p1, q1)); // Output: true

  // Example 2
  TreeNode p2 = TreeNode(1);
  p2.left = TreeNode(2);

  TreeNode q2 = TreeNode(1);
  q2.right = TreeNode(2);

  print(s.isSameTree(p2, q2)); // Output: false

  // Example 3
  TreeNode p3 = TreeNode(1);
  p3.left = TreeNode(2);
  p3.right = TreeNode(1);

  TreeNode q3 = TreeNode(1);
  q3.left = TreeNode(1);
  q3.right = TreeNode(2);

  print(s.isSameTree(p3, q3)); // Output: false
}
