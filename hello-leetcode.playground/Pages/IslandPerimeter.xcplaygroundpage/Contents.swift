//: [Previous](@previous)

import Foundation

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var ans = 0
        let m = grid.count
        let n = grid.first?.count ?? 0
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 0 {
                    continue
                }
                for direcion in directions {
                    let newI = i + direcion.0
                    let newJ = j + direcion.1
                    if newI < 0 || newI >= m || newJ < 0 || newJ >= n {
                        ans = ans + 1
                    } else {
                        ans = ans + (1 - grid[newI][newJ])
                    }
                }
            }
        }
        return ans
    }
}
//: [Next](@next)
