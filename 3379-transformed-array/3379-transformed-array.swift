class Solution {
    func constructTransformedArray(_ nums: [Int]) -> [Int] {
        var result: [Int] = []

        for (i, num) in nums.enumerated() {
            // 8 steps to left in n = 5 array its 2 steps to right: check this method
            let newIndex: Int
            if num == 0 {
                newIndex = num
            } else {
                newIndex = nums[(i + abs(num) * nums.count + num) % nums.count]
            }
            result.append(newIndex)
        }

        return result
    }
}