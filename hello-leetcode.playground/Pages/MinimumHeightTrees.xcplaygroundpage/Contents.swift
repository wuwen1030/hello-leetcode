//: [Previous](@previous)

import Foundation

class Solution {
    func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var grid = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
        for edge in edges {
            grid[edge[0]][edge[1]] = true
            grid[edge[1]][edge[0]] = true
        }
        var heights = [Int: Int]()
        var minHeight = Int.max
        for i in 0..<n {
            var height = -1
            var visited = [Bool](repeating: false, count: n)
            height = dfs(n, grid, i, &visited)
            minHeight = min(minHeight, height)
            heights[i] = height
        }
        return heights.filter{$0.value == minHeight}.map{$0.key}
    }
    
    func dfs(_ n: Int, _ grid: [[Bool]], _ i: Int, _ visited: inout [Bool]) -> Int  {
        var depth = -1
        for j in 0..<n {
            if !grid[i][j] {
                continue
            }
            if visited[j] {
                continue
            }
            visited[i] = true
            depth = max(dfs(n, grid, j, &visited), depth)
        }
        return depth + 1
    }
}
let solution = Solution()
solution.findMinHeightTrees(6, [[3,0],[3,1],[3,2],[3,4],[5,4]])
//: [Next](@next)
