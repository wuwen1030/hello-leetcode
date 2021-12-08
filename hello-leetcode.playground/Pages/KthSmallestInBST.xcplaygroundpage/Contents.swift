//: [Previous](@previous)

import Foundation

class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [TreeNode?]()
        var node = root
        var count = 0
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node)
                node = node?.left
            } else {
                node = stack.removeLast()
                count = count + 1
                if count == k {
                    return node!.val
                }
                node = node?.right
            }
        }
        return -1
    }
}

//: [Next](@next)
