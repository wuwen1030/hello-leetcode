//: [Previous](@previous)

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var right = 0
        var set = Set<Character>()
        var maxLength = 0
        while left < s.count, right < s.count {
            let rightIndex = s.index(s.startIndex, offsetBy: right)
            let c = s[rightIndex]
            if !set.contains(c) {
                set.insert(c)
                right = right + 1
            } else {
                set.remove(s[s.index(s.startIndex, offsetBy: left)])
                left = left + 1
            }
            maxLength = max(maxLength, right - left)
        }
        return maxLength
    }
}
