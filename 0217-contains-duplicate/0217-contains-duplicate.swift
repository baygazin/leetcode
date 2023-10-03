class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map: [Int: Bool] = [:]
        for num in nums {
            if let numAlreadyExists = map[num], numAlreadyExists {
                return numAlreadyExists
            } else {
                map[num] = true
            }
        }
        return false
    }
}