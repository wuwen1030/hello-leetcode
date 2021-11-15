//: [Previous](@previous)

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var ans:[Int] = []
        var map:[Int: Int] = [:];
        for (index, num) in nums.enumerated() {
            if let idx = map[target - num] {
                ans.append(idx)
                ans.append(index)
            } else {
                map[num] = index
            }
        }
        return ans
    }
}
//: [Next](@next)
