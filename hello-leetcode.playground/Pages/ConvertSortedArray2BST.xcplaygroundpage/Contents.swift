//: [Previous](@previous)

import Foundation

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return sortedArrayToBST(nums, 0, nums.count - 1)
    }
    
    func sortedArrayToBST(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        if start > end {
            return nil
        }
        let middle = start + (end - start) / 2
        let root = TreeNode(nums[middle])
        root.left = sortedArrayToBST(nums, start, middle - 1)
        root.right = sortedArrayToBST(nums, middle + 1, end)
        return root
    }
}
//: [Next](@next)
