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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var left = head
        return isPalindromeHelper(left: &left, right: head)
    }
    
    private func isPalindromeHelper(left: inout ListNode?, right: ListNode?) -> Bool {
        guard let right else { return true }
        
        let isNextPalindrome = isPalindromeHelper(left: &left, right: right.next)
        
        guard isNextPalindrome else { return false }
        
        let isCurrentPalindrome = left?.val == right.val
        
        left = left?.next
        
        return isCurrentPalindrome
    }
}