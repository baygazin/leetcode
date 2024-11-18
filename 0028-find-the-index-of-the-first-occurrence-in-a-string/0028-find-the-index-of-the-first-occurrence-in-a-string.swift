class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let needleIndex = haystack.firstRange(of: needle)?.lowerBound else { return -1 }
        
        return haystack.distance(from: haystack.startIndex, to: needleIndex)
    }
}