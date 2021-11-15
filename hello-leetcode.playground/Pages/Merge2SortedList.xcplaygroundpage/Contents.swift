//: [Previous](@previous)

import Foundation

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(-1)
        var current: ListNode? = dummy
        var p1 = l1
        var p2 = l2
        while let np1 = p1, let np2 = p2 {
            if np1.val < np2.val {
                current?.next = p1
                p1 = p1?.next
            } else {
                current?.next = p2
                p2 = p2?.next
            }
            current = current?.next
        }
        
        if let _ = p1 {
            current?.next = p1
        }
        if let _ = p2 {
            current?.next = p2
        }
        
        return dummy.next
    }
}
//: [Next](@next)
