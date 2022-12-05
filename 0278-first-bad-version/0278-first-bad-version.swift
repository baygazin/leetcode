/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var l = 1
        var r = n
        var badVersion = 1
        while l <= r {
            var m = (r+l)/2
            if isBadVersion(m) {
                badVersion = m
                r = m - 1
            } else {
                l = m + 1
            }
        }
        
        return badVersion
    }
}