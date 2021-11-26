//: [Previous](@previous)

import Foundation

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var node = root
        while let nnode = node {
            if nnode.val == val {
                break
            } else if nnode.val < val {
                node = node?.right
            } else {
                node = node?.left
            }
        }
        return node
    }
}
//: [Next](@next)
