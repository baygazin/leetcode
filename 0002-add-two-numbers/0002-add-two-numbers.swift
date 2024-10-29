/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let l3: ListNode? = ListNode()

        var h1 = l1
        var h2 = l2
        var h3 = l3
        var reminder = 0

        repeat {
            let sum = (h1?.val ?? 0) + (h2?.val ?? 0) + reminder
            let val = sum % 10
            h3?.next = ListNode(val)

            reminder = sum / 10
            h1 = h1?.next
            h2 = h2?.next
            h3 = h3?.next
        } while h1 != nil || h2 != nil

        if reminder != 0 {
            h3?.next = ListNode(reminder)
        }

        return l3?.next
    }
}