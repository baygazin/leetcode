class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        
        while l <= r {
            let m = l + (r - l)/2
            if nums[m] == target {
                return m
            } else {
                if isInRange(nums[l], nums[m], target) {
                    r = m - 1
                } else if isInRange(nums[m], nums[r], target) {
                    l = m + 1
                } else {
                    break
                }
            }
        }
        
        return -1
    }
    
    private func isInRange(_ l: Int, _ r: Int, _ t: Int) -> Bool {
        if l <= r {
            return l <= t && t <= r
        } else {
            return !(l > t && t > r)
        }
    }
}