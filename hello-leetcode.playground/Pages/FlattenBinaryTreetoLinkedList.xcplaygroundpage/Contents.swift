//: [Previous](@previous)

import Foundation

class Solution {
    func flatten(_ root: TreeNode?) {
        if root?.left == nil, root?.right == nil {
            return
        }
        flatten(root?.left)
        flatten(root?.right)
        var node = root?.left
        while node?.right != nil {
            node = node?.right
        }
        if node != nil {
            node?.right = root?.right
            root?.right = root?.left
            root?.left = nil
        }
    }
}

//: [Next](@next)
