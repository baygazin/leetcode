class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        guard nums.count > 1 else { return result }
        var i = 0
        var j = 1

        while i < nums.count {
            while j < nums.count {
                print(i, j)
                if (nums[i] + nums[j]) < target {
                    result += 1
                }
                j += 1
            }
            i += 1
            j = i + 1
        }

        return result
    }
}