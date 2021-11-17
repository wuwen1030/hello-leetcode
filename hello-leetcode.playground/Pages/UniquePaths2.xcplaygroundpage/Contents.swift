//: [Previous](@previous)

import Foundation

class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid.first?.count ?? 0
        if m == 0 || n == 0 {
            return 0
        }
        
        let row = [Int](repeating: 0, count: n)
        var dp = [[Int]](repeating: row, count: m)
        dp[0][0] = obstacleGrid[0][0] == 1 ? 0 : 1
        for i in 0..<m {
            for j in 0..<n {
                if i == 0 && j == 0 {
                    continue
                }
                let left = j >= 1 ? dp[i][j-1] : 0
                let top = i >= 1 ? dp[i-1][j] : 0
                dp[i][j] = obstacleGrid[i][j] == 1 ? 0 : (left + top)
            }
        }
        return dp[m-1][n-1]
    }
}
//: [Next](@next)
