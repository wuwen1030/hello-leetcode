//: [Previous](@previous)

import Foundation

class Solution {
    var ans = [String]()
    func generateParenthesis(_ n: Int) -> [String] {
        ans.removeAll()
        var str = [Character](repeating: " ", count: 2 * n)
        dfs(n, 0, 0, &str)
        return ans
    }
    
    func dfs(_ n: Int, _ leftCount: Int, _ rightCount: Int, _ str: inout [Character]) {
        if (leftCount + rightCount) >= 2 * n {
            ans.append(String(str))
            return
        }
        
        if leftCount < n {
            str[leftCount+rightCount] = "("
            dfs(n, leftCount + 1, rightCount, &str)
        }
        
        if leftCount > rightCount {
            str[leftCount+rightCount] = ")"
            dfs(n, leftCount, rightCount + 1, &str)
        }
    }
}
//: [Next](@next)
