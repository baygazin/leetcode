class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0
        var rhs = nums.count - 1
        var mid = 0
        while lhs <= rhs {
            mid = (lhs + rhs) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[lhs] > target {
                return lhs
            } else if nums[rhs] < target {
                return rhs + 1
            }
            
            if nums[mid] > target {
                rhs = mid - 1
            } else {
                lhs = mid + 1
            }
        }
        
        return mid
    }
}