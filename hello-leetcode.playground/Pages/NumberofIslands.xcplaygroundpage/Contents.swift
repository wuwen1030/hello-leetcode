//: [Previous](@previous)

import Foundation

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var mutableGrid = [[Character]](grid)
        let m = mutableGrid.count
        let n = mutableGrid.first?.count ?? 0
        var count = 0
        for i in 0..<m {
            for j in 0..<n {
                if mutableGrid[i][j] == "1" {
                    count = count + 1
                    dfs(&mutableGrid, i, j)
                }
            }
        }
        return count
    }
    
    func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) {
        let m = grid.count
        let n = grid.first?.count ?? 0

        if i < 0 || i >= m || j < 0 || j >= n {
            return
        }
        if grid[i][j] == "0" {
            return
        }
        grid[i][j] = "0"
        let offsets = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        for offset in offsets {
            dfs(&grid, i + offset.0, j + offset.1)
        }
    }
}
//: [Next](@next)
