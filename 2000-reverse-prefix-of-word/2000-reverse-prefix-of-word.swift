class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var chars = Array(word)
        guard let indexOfCh = chars.firstIndex(of: ch) else { return word }
    
        var left = 0
        var rigth = indexOfCh
    
        while left < rigth {
            chars.swapAt(left, rigth)
            left += 1
            rigth -= 1
        }
    
        return String(chars)
    }
}