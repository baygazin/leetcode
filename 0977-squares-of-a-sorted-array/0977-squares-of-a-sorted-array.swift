class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var squares = nums
        var lhs = 0
        var rhs = nums.count - 1
        var index = nums.count - 1 
        while index >= 0 {
            if abs(nums[lhs]) >= abs(nums[rhs]) {
                squares[index] = nums[lhs] * nums[lhs]
                lhs += 1
            } else {
                squares[index] = nums[rhs] * nums[rhs]
                rhs -= 1
            }
            index -= 1
        }
        
        return squares
    }
}