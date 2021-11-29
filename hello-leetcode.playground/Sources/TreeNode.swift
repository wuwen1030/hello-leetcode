import Foundation

public class TreeNode: CustomStringConvertible {
    public var val: Int = 0
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    public var description: String {
        return "val: \(val)"
    }
}

public func binaryTree(_ nums: [Int?]) -> TreeNode? {
    if nums.compactMap({$0}).count == 0 {
        return nil
    }
    var queue = [TreeNode?]()
    guard let rootVal = nums.first as? Int else {
        return nil
    }
    let root = TreeNode(rootVal)
    queue.append(root)
    var k = 1
    while queue.count != 0, k < nums.count {
        if let node = queue.first as? TreeNode {
            let left = nums[k] != nil ? TreeNode(nums[k]!) : nil
            queue.append(left)
            k = k + 1
            node.left = left
            if k < nums.count {
                let right = nums[k] != nil ? TreeNode(nums[k]!) : nil
                queue.append(right)
                k = k + 1
                node.right = right
            }
        }
        queue.removeFirst()
        
    }
    return root
}

public func printBinaryTree(_ root: TreeNode?) -> [Int?] {
    var values = [Int?]()
    var queue = [TreeNode?]()
    queue.append(root)
    while queue.count != 0 {
        if let node = queue.first as? TreeNode {
            values.append(node.val)
            if node.left != nil || node.right != nil {
                queue.append(node.left)
                queue.append(node.right)
            }
        } else {
            values.append(nil)
        }
        queue.removeFirst()
    }
    return values
}

