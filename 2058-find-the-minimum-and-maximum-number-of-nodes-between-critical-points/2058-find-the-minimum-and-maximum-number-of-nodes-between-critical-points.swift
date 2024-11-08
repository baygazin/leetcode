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
    func nodesBetweenCriticalPoints(_ head: ListNode?) -> [Int] {
        guard case var prev = head,
              case var current = prev?.next,
              current?.next != nil else { return [-1, -1] }
        
        var index = 1
        var last: Int?
        var min = -1
        var max = -1
        
        while let next = current?.next  {
            if (current!.val > prev!.val && current!.val > next.val) ||
            (current!.val < prev!.val && current!.val < next.val) {
                   if let prevLast = last, case let distance = index - prevLast {
                       if min != -1 {
                           min = distance < min ? distance : min
                           max += distance
                       } else {
                           min = distance
                           max = distance
                       }
                       
                   }
                last = index
            }
            
            prev = current
            current = next
            index += 1
        }
        
        return [min, max]
    }
}