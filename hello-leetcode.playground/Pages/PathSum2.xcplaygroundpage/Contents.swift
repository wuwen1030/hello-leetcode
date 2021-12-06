//: [Previous](@previous)

import Foundation

class Solution {
    var ans = [[Int]]()
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        ans.removeAll()
        if let root = root {
            var path = [Int]()
            dfs(root, targetSum, &path)
        }
        return ans
    }
    
    func dfs(_ node: TreeNode, _ targetSum: Int, _ path: inout [Int]) {
        path.append(node.val)
        if node.left == nil && node.right == nil && node.val == targetSum {
            ans.append([Int](path))
        }
        if let left = node.left {
            dfs(left, targetSum - node.val, &path)
            path.removeLast()
        }
        if let right = node.right {
            dfs(right, targetSum - node.val, &path)
            path.removeLast()
        }
    }
}
//: [Next](@next)
