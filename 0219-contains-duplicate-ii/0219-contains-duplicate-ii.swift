class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map: [Int: Int] = [:]
        
        for (i, num) in nums.enumerated() {
            if let j = map[num], abs(i - j) <= k {
                return true
            } else {
                map[num] = i
            }
        }
        
        return false
    }
}