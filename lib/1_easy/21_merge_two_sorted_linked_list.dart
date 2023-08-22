class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode(0);
    ListNode current = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        current.next = list1;
        list1 = list1.next;
      } else {
        current.next = list2;
        list2 = list2.next;
      }
      current = current.next!;
    }

    if (list1 != null) {
      current.next = list1;
    } else {
      current.next = list2;
    }

    return dummy.next;
  }
}

void main() {
  Solution solution = Solution();

  // Create the linked lists
  ListNode list1 = ListNode(1);
  list1.next = ListNode(2);
  list1.next!.next = ListNode(4);

  ListNode list2 = ListNode(1);
  list2.next = ListNode(3);
  list2.next!.next = ListNode(4);

  // Merge the linked lists
  ListNode? mergedList = solution.mergeTwoLists(list1, list2);

  // Print the merged list
  while (mergedList != null) {
    print(mergedList.val);
    mergedList = mergedList.next;
  }
}