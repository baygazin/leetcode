class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var l = 0
        var r = matrix.count - 1
        while l < r {
            let m = l + (r - l)/2
            
            if matrix[m][0] == target {
                return true
            } else if matrix[m][0] > target {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        
        if (matrix[l][0] > target), l > 0 {
            l -= 1
        }
        
        var l1 = 0
        var r1 = matrix[l].count - 1
        while l1 <= r1 {
            let m = l1 + (r1 - l1)/2
            
            if matrix[l][m] == target {
                return true
            } else if matrix[l][m] > target {
                r1 = m - 1
            } else {
                l1 = m + 1
            }
        }
        
        return false
    }
}