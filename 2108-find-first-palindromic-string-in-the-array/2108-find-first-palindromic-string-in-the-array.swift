class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        return words.first { $0.isPalindrome } ?? ""
    }
}

extension String {
    var isPalindrome: Bool {
        let reversed = String(self.reversed())

        return reversed == self
    }
}