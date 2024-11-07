class Solution {
    func isBalanced(_ num: String) -> Bool {
        var evenSum = 0
        var oddSum = 0
        let nums = num.compactMap { $0.wholeNumberValue }

        for (i, num) in nums.enumerated() {
            if i % 2 == 0 {
                evenSum += num
            } else {
                oddSum += num
            }
        }

        return evenSum == oddSum
    }
}