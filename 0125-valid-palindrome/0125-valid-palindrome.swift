class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var s = s.lowercased()
        s.removeAll { !($0.isLetter || $0.isNumber) }
    
        return s == String(s.reversed())
    }
}