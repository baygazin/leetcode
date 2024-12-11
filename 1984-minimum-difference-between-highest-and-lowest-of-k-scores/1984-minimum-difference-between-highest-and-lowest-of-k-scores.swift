class Solution {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count != 1 else { return 0 }
        
        let nums = nums.sorted { $0 < $1 }
        var start = 0
        var end = k - 1
        var min = abs(nums[start] - nums[end])
        
        while end + 1 < nums.count {
            start += 1
            end += 1
            var tempSum = abs(nums[start] - nums[end])
            if tempSum < min {
                min = tempSum
            }
        }
    
        return min
    }
}