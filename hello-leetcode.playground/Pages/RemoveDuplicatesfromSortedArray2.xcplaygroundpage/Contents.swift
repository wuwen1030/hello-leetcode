//: [Previous](@previous)

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        var j = 0
        while j < nums.count {
            var k = 1
            while j + 1 < nums.count, nums[j+1] == nums[j] {
                j = j + 1
                k = k + 1
            }
            for _ in 1...min(k, 2) {
                nums[i] = nums[j]
                i = i + 1
            }
            j = j + 1
        }
        return i
    }
}
//: [Next](@next)
