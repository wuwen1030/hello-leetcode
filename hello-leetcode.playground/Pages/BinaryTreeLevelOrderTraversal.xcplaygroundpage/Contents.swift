//: [Previous](@previous)

import Foundation

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var ans: [[Int]] = []
        guard let root = root else {
            return ans
        }
        var queue = [TreeNode]()
        queue.append(root)
        while queue.count > 0 {
            var level = [Int]()
            var size = queue.count
            for i in 0..<size {
                let node = queue.first!
                level.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                queue.removeFirst()
            }
            ans.append(level)
        }
        return ans
    }
}
//: [Next](@next)
