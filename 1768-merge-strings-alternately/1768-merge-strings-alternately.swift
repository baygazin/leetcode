class Solution {
func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var word1 = Array(word1)
    var word2 = Array(word2)
    var result = ""
    var i = 0

    while i < word1.count || i < word2.count {
        if i < word1.count {
            result += String(word1[i])
        }
        if i < word2.count {
            result += String(word2[i])
        }
        i += 1
    }

    return result
}
}