class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        
        if n == 1 {
            return true
        } else if n % 3 != 0 {
            return false
        }
        
        return isPowerOfThree(n / 3)
    }
}