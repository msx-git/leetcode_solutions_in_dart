import 'dart:convert';
import 'dart:io';

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) {
      return null;
    }

    ListNode current = head;
    while (current.next != null) {
      if (current.val == current.next!.val) {
        current.next = current.next!.next;
      } else {
        current = current.next!;
      }
    }

    return head;
  }
}
void printList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}

void main() {
  // Create the linked list
  ListNode node5 = ListNode(3);
  ListNode node4 = ListNode(3, node5);
  ListNode node3 = ListNode(2, node4);
  ListNode node2 = ListNode(1, node3);
  ListNode node1 = ListNode(1, node2);

  Solution solution = Solution();
  ListNode? newHead = solution.deleteDuplicates(node1);

  printList(newHead);

  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  print(a);

}