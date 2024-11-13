class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0
        var i = 0
        
        while i < nums.count {
            if nums[i] != val {
                nums[k] = nums[i]
                i += 1
                k += 1
            } else {
                i += 1
            }
        }
        
        return k
    }
}