class Solution {
    func numberOfAlternatingGroups(_ colors: [Int]) -> Int {
        var i = 1
        var result = 0
        
        while i <= colors.count {
            if colors[i - 1] != colors[i % colors.count] && colors[(i + 1) % colors.count] != colors[i % colors.count] {
                result += 1
            }
            i += 1
        }
        
        return result
    }
}