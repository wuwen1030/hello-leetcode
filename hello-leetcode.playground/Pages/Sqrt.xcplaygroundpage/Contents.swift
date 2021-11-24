//: [Previous](@previous)

import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var left = 0
        var right = x
        var ans = 0
        while left <= right {
            let mid = left + (right - left) / 2
            if mid * mid <= x {
                ans = mid
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return ans
    }
}
//: [Next](@next)
