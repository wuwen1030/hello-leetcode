//: [Previous](@previous)

import Foundation

class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        let row = [Int](repeating: 1, count: n)
        var dp = [[Int]](repeating: row, count: m)
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
        return dp[m-1][n-1]
    }
}

//: [Next](@next)
