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

    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count <= 1 {
            return lists.first ?? nil
        }
        
        var sortedList = [ListNode?]()
        let size = lists.count
        for i in 0..<size/2 {
            sortedList.append(mergeTwoLists(lists[i], lists[size-1-i]))
        }
        // odd
        if size % 2 == 1 {
            sortedList.append(lists[size / 2])
        }
        return mergeKLists(sortedList)
    }
}
//: [Next](@next)
