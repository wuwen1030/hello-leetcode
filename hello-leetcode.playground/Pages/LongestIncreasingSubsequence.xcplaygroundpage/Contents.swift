//: [Previous](@previous)

import Foundation

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        let n = nums.count
        if (n == 0) {
            return 0
        }
        var dp = [Int](repeating: 1, count: n)
        var ans = 1;
        for i in 1..<n {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            ans = max(ans, dp[i])
        }
        return ans
    }
}
//: [Next](@next)
