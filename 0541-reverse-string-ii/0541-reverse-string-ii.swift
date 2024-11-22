class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        guard s.count > k else { return String(s.reversed()) }

        var chars = Array(s)
        
        for i in stride(from: 0, to: chars.count, by: 2*k) {
            var l = i
            var r = min(i+k-1, chars.count-1)

            while l < r {
                chars.swapAt(l, r)
                l += 1
                r -= 1
            }
        }
        return String(chars)
    }
}