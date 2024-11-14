class Solution {
    func hasIncreasingSubarrays(_ nums: [Int], _ k: Int) -> Bool {
        guard nums.count > 2 else { return true }

        var i = 0
        var prevCount = 1
        var count = 1
        while i + 1 < nums.count {
            guard count != 2 * k else { return true }

            if nums[i] < nums[i+1] {
                count += 1
            } else {
                if prevCount >= k && count >= k {
                    return true
                } else {
                    prevCount = count
                    count = 1  
                }
            }
            
            i += 1
        }
        print("\(prevCount) \(count)")
        return (prevCount >= k && count >= k) || count == 2 * k
    }
}