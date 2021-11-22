//: [Previous](@previous)

import Foundation

class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let m = board.count
        let n = board.first?.count ?? 0
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
        for i in 0..<m {
            for j in 0..<n {
                if check(board, i, j, &visited, word, 0) {
                    return true
                }
            }
        }
        return false
    }
    
    func check(_ board: [[Character]], _ i: Int, _ j: Int, _ visited: inout [[Bool]], _ word: String, _ k: Int) -> Bool {
        if board[i][j] != word[word.index(word.startIndex, offsetBy: k)] {
            return false
        }
        if k == word.count - 1 {
            return true
        }
        visited[i][j] = true
        var result = false
        let m = board.count
        let n = board.first?.count ?? 0
        let offsets = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        for offset in offsets {
            let newI = i + offset.0
            let newJ = j + offset.1
            if newI >= 0 && newI < m && newJ >= 0 && newJ < n {
                if visited[newI][newJ] {
                    continue
                }
                if check(board, newI, newJ, &visited, word, k+1) {
                    result = true
                    break
                }
            }
        }
        visited[i][j] = false
        return result
    }
}

//: [Next](@next)
