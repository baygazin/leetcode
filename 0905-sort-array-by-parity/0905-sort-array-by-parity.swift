class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        nums.sorted { $0&1 < $1&1 }
    }
}