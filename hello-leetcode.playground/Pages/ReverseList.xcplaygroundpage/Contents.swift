//: [Previous](@previous)

import Foundation

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var pre: ListNode?
        var node: ListNode? = head
        while node != nil {
            let next = node?.next
            node?.next = pre
            pre = node
            node = next
        }
        return pre
    }
}

//: [Next](@next)
