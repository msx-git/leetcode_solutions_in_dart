class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];
    List<TreeNode?> stack = [];

    TreeNode? currentNode = root;

    while (currentNode != null || stack.isNotEmpty) {
      while (currentNode != null) {
        stack.add(currentNode);
        currentNode = currentNode.left;
      }

      currentNode = stack.removeLast();
      result.add(currentNode!.val);
      currentNode = currentNode.right;
    }

    return result;
  }
}
