class Solution {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var nums = nums
        var i = 0
        var j = 1
        
        while i < nums.count && j < nums.count {
            if nums[i] % 2 == 0 && nums[j] % 2 != 0 {
                i += 2
                j += 2
            } else if nums[i] % 2 == 0 {
                i += 2
            } else if nums[j] % 2 != 0 {
                j += 2
            } else {
                nums.swapAt(i, j)
                i += 2
                j += 2
            }
        }
        
        return nums
    }
}