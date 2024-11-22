class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var chars = Array(s)

        var left = 0
        var right = chars.count - 1
    
        while left < right {
            if chars[left].isEnglishLetter && chars[right].isEnglishLetter {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            } else if chars[left].isEnglishLetter {
            right -= 1
            } else if chars[right].isEnglishLetter {
            left += 1
            } else {
                left += 1
                right -= 1
            }
        }
        return String(chars)
    }
}

extension Character {
    
    var isEnglishLetter: Bool {
        description.range(of: "[a-zA-Z]", options: .regularExpression) != nil
    }
}