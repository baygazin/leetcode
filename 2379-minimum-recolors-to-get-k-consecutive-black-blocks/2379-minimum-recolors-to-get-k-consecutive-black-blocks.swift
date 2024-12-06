class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var array = Array(blocks)
        
        var start = 0
        var end = k - 1
        var result = 0
        var minResult = 0
        for i in start...end {
            if array[i] == "W" {
                result += 1
            }
        }
        minResult = result
        
        while end + 1 < array.count {
            if array[start] == "W" {
                result -= 1
            }
            start += 1
            end += 1
            if array[end] == "W" {
                result += 1
            }
            
            if result < minResult {
                minResult = result
            }
        }
        
        return minResult
    }
}