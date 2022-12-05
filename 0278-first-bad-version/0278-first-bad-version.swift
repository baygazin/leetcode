/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var lhs = 1
        var rhs = n
        var badVersion = 1
        while lhs <= rhs {
            var mid = (lhs+rhs) / 2
            if isBadVersion(mid) {
                badVersion = mid
                rhs = mid - 1
            } else {
                lhs = mid + 1
            }
        }
        
        return badVersion
    }
}