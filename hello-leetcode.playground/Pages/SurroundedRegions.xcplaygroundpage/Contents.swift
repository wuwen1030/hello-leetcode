//: [Previous](@previous)

import Foundation

class Solution {
    func solve(_ board: inout [[Character]]) {
        let m = board.count
        let n = board.first?.count ?? 0
        
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
        for i in [0, m - 1] {
            for j in 0..<n {
                if board[i][j] == "O" {
                    dfs(&board, i, j, &visited)
                }
            }
        }
        for i in 0..<m {
            for j in [0, n - 1] {
                if board[i][j] == "O" {
                    dfs(&board, i, j, &visited)
                }
            }
        }
        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                } else if board[i][j] == "#" {
                    board[i][j] = "O"
                }
            }
        }
    }
    
    func dfs(_ board: inout [[Character]], _ i: Int, _ j: Int, _ visited: inout [[Bool]]) {
        let m = board.count
        let n = board.first?.count ?? 0
        if i < 0 || i >= m || j < 0 || j >= n {
            return
        }
        if visited[i][j] {
            return
        }
        
        visited[i][j] = true

        if board[i][j] == "O" {
            board[i][j] = "#"
            dfs(&board, i - 1, j, &visited)
            dfs(&board, i + 1, j, &visited)
            dfs(&board, i, j - 1, &visited)
            dfs(&board, i, j + 1, &visited)
        }
    }
}

let solution = Solution()
var board:[[Character]] = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
solution.solve(&board)
board
//: [Next](@next)
