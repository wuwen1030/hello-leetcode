//: [Previous](@previous)

import Foundation

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var ans = [Int]()
        inorderTraversalRecursicely(root, &ans)
        return ans
    }
    
    func inorderTraversalRecursicely(_ root: TreeNode?, _ ans: inout [Int]) {
        guard let _ = root else {
            return
        }
        inorderTraversalRecursicely(root?.left, &ans)
        ans.append(root!.val)
        inorderTraversalRecursicely(root?.right, &ans)
    }
    
    func inorderTraversalIteratively(_ root: TreeNode?) -> [Int] {
        var ans = [Int]()
        var stack = [TreeNode?]()
        var node = root
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node)
                node = node?.left
            } else {
                node = stack.removeLast()
                ans.append(node!.val)
                node = node?.right
            }
        }
        
        return ans
    }
}

let solution = Solution()
let root = binaryTree([1, nil, 2, 3])
solution.inorderTraversal(root)
//: [Next](@next)
