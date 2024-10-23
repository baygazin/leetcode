/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return nil }
        
        var slow = head
        var fast = head?.next
        
        while slow !== fast {
            guard let nextFast = fast?.next?.next else { return nil }
            slow = slow?.next
            fast = nextFast
        }
        
        slow = head
        
        while slow !== fast?.next {
            slow = slow?.next
            fast = fast?.next
        }
        
        return slow
    }
}