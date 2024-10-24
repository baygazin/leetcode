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
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head?.next != nil else { return false }
        
        var slow = head
        var fast = head?.next
        
        while let fastNext = fast?.next?.next {
            guard slow !== fast else { return true }

            slow = slow?.next
            fast = fastNext
        }
        
        return false
    }
}