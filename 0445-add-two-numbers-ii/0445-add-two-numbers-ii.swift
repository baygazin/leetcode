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
    var reminder = 0

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let l3: ListNode? = ListNode()
        var reverseL1 = reverseList(l1)
        var reverseL2 = reverseList(l2)
        var h3 = l3
        var reminder = 0

        repeat {
            let sum = (reverseL1?.val ?? 0) + (reverseL2?.val ?? 0) + reminder
            let val = sum % 10
            h3?.next = ListNode(val)

            reminder = sum / 10
            reverseL1 = reverseL1?.next
            reverseL2 = reverseL2?.next
            h3 = h3?.next
        } while reverseL1 != nil || reverseL2 != nil

        if reminder != 0 {
            h3?.next = ListNode(reminder)
        }

        return reverseList(l3?.next)
    }
    
    private func reverseList(_ head: ListNode?) -> ListNode? {
        guard let next = head?.next else { return head }
        
        let last = reverseList(next)
        head?.next?.next = head
        head?.next = nil

        return last
    }
}