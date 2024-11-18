class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var i = 0
        while i + 1 < arr.count {
            if arr[i] == 0 {
                arr.popLast()
                arr.insert(0, at: i + 1)
                i += 2
            } else {
                i += 1
            }
        }
    }
}