class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0
        var rhs = nums.count - 1
        while lhs <= rhs {
            var mid = (lhs + rhs) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                rhs = mid - 1
            } else {
                lhs = mid + 1
            }
        }
        return -1
    }
}