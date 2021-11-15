//: [Previous](@previous)

import Foundation

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(-1, head)
        var pre: ListNode? = dummy
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy
        var skipStep = 0
        while fast != nil {
            fast = fast?.next
            if skipStep < n {
                skipStep = skipStep + 1;
                continue
            }
            pre = slow
            slow = slow?.next
        }
        pre?.next = slow?.next
        return dummy.next
    }
}
//: [Next](@next)
