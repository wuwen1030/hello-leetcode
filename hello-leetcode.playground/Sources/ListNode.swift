import Foundation

public class ListNode {
    public var val: Int = 0
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

public func linkedList(_ nums: [Int]) -> ListNode? {
    var node: ListNode?
    for num in nums.reversed() {
        node = ListNode(num, node)
    }
    return node
}

public func printLinkedList(_ head: ListNode?) -> [Int] {
    var node = head
    var values = [Int]()
    while let nnNode = node {
        values.append(nnNode.val)
        node = node?.next
    }
    return values
}


