class Solution {
func findXSum(_ nums: [Int], _ k: Int, _ x: Int) -> [Int] {
    let resultLength = nums.count - k + 1
    var resultArray: [Int] = []

    for i in 0..<resultLength {
        let subArray = Array(nums[i...i + k - 1])
        let xSum = findSubArrayXSum(subArray, x)
        resultArray.append(xSum)
    }

    func findSubArrayXSum(_ nums: [Int], _ x: Int) -> Int {
        var dictionary: [Int: Int] = [:]

        for (i, num) in nums.enumerated() {
            if let value = dictionary[num] {
                dictionary[num] = value + 1
            } else {
                dictionary[num] = 1
            }
        }

        let sortedDictionary = dictionary.sorted {
            if $0.value > $1.value {
                return true
            } else if $0.value == $1.value {
                return $0.key > $1.key
            } else {
                return false
            }
        }
        guard sortedDictionary.count > x else {
            return nums.reduce(0) { partialResult, element in
                return partialResult +  element
            }
        }
        return sortedDictionary[0..<x].reduce(0) { partialResult, element in
            return partialResult + element.key * element.value
        }
    }

    return resultArray
}
}