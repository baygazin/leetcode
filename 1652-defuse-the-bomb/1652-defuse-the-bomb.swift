class Solution {
    func decrypt(_ code: [Int], _ k: Int) -> [Int] {
        var result = Array(repeating: 0, count: code.count)
        guard k != 0 else { return result }
        
        var start: Int
        var end: Int
        var sum = 0
        
        if k > 0 {
            start = 1
            end = k
        } else {
            start = code.count - abs(k)
            end = code.count - 1
        }
        
        for i in start...end {
            sum += code[i]
        }
        for i in 0..<code.count {
            result[i] = sum
            sum -= code[start % code.count]
            start += 1
            end += 1
            sum += code[end % code.count]
        }
        
        return result
    }
}