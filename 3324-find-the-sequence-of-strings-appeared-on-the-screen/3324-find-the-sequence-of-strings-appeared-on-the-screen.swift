class Solution {
    func stringSequence(_ target: String) -> [String] {
        var answer: [String] = []
        var input = ""

        while input.count != target.count {
            var a = "a"
            input += a
            answer.append(input)

            let index = target.index(target.startIndex, offsetBy: input.count)
            let subtarget = target.substring(to: index)
            let rs = input.index(input.startIndex, offsetBy: input.count - 1)
            let re = input.index(input.startIndex, offsetBy: input.count)

            while input != subtarget {
                a = a.nextChar
                input.replaceSubrange(rs..<re, with: a)
                answer.append(input)
            }
        }

        return answer
    }
}

extension String {
    var nextChar: String {
        let nextCharScalarValue = UnicodeScalar(self.unicodeScalars.first!.value + 1)!

        return String(nextCharScalarValue)
    }
}