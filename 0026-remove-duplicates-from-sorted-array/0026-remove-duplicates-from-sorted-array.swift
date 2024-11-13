class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        
        while i + 1 < nums.count {
            if nums[i] == nums[i + 1] {
                nums.remove(at: i)
            } else {
                i += 1
            }
        }
        
        return nums.count
    }
}