class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0
        var rhs = nums.count - 1
        while lhs <= rhs {
            var midd = (lhs + rhs) / 2
            if nums[midd] == target {
                return midd
            } else if nums[midd] > target {
                rhs = midd - 1
            } else {
                lhs = midd + 1
            }
        }
        return -1
    }
}