//: [Previous](@previous)

import Foundation

class Solution {
    func trap(_ height: [Int]) -> Int {
        var leftMaxList = [Int]()
        var leftMax = 0
        for value in height {
            leftMaxList.append(leftMax)
            leftMax = max(value, leftMax)
        }
        var rightMaxList = [Int]()
        var rightMax = 0
        for value in height.reversed() {
            rightMaxList.insert(rightMax, at: 0)
            rightMax = max(rightMax, value)
        }
        var ans = 0
        for i in 0..<height.count {
            ans = ans + max(min(leftMaxList[i], rightMaxList[i]) - height[i], 0)
        }
        return ans
    }
    
    func trap2(_ height: [Int]) -> Int {
        var leftMax = 0
        var rightMax = 0
        var left = 0
        var right = height.count - 1
        var ans = 0
        while left < right {
            leftMax = max(leftMax, height[left])
            rightMax = max(rightMax, height[right])
            if (leftMax < rightMax) {
                ans = ans + (leftMax - height[left])
                left = left + 1
            } else {
                ans = ans + (rightMax - height[right])
                right = right - 1
            }
        }
        return ans
    }
}

let solution = Solution()
solution.trap([0,1,0,2,1,0,1,3,2,1,2,1]) // 6
solution.trap([4,2,0,3,2,5]) // 9

solution.trap2([0,1,0,2,1,0,1,3,2,1,2,1]) // 6
solution.trap2([4,2,0,3,2,5]) // 9

//: [Next](@next)
