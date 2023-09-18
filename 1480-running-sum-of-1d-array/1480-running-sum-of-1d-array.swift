class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        nums.reduce(into: []) { acc, val in acc.append(val + (acc.last ?? 0)) }
    }
}