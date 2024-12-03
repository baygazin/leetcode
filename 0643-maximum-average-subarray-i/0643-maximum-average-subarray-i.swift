class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var start = 0
        var end = k - 1
        var maxSum: Int
        var sum = 0
        for i in start...k - 1 {
            sum += nums[i]
        }
        maxSum = sum
        while end + 1 < nums.count {
            sum -= nums[start]
            start += 1
            end += 1
            sum += nums[end]
            if sum > maxSum {
                maxSum = sum
            }
        }

        return Double(maxSum) / Double(k)
    }
}