//: [Previous](@previous)

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var ans = 0
        while left < right {
            let area = min(height[left], height[right]) * (right - left)
            ans = max(area, ans)
            if height[left] < height[right] {
                left = left + 1
            } else {
                right = right - 1
            }
        }
        return ans
    }
}
//: [Next](@next)
