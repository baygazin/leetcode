class Solution {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
        var left = 0
        var right = chars.count - 1
    
        while left < right {
            if vowels.contains(chars[left].lowercased()) && vowels.contains(chars[right].lowercased()) {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            } else if vowels.contains(chars[left].lowercased()) {
                right -= 1
            } else if vowels.contains(chars[right].lowercased()) {
                left += 1
            } else {
                left += 1
                right -= 1
            }
        }
        return String(chars)
    }
}