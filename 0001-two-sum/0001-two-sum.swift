class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for firstIndex in 0..<nums.count {
            if let secondIndex = dict[target - nums[firstIndex]] {
                return [firstIndex, secondIndex]
            } else {
                dict[nums[firstIndex]] = firstIndex
            }
        }
        return []
    }
}