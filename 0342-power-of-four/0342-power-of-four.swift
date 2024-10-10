class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        
        if n == 1 {
            return true
        } else if n % 4 != 0 {
            return false
        }
        
        return isPowerOfFour(n / 4)
    }
}