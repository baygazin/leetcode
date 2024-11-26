class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {
        var result = ""
        var i = 0

        while i < words.count {
            guard result != s else { return true }

            result += words[i]

            guard s.hasPrefix(result) else { return false }

            i += 1
        }

        return s.count == result.count
    }
}