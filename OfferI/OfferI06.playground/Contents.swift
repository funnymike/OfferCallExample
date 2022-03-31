import Foundation

/// 链表节点
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var stack: [ListNode] = []
        var head = head
        while let node = head {
            stack.append(node)
            head = node.next
        }
        var res: [Int] = []
        while let top = stack.popLast() {
            res.append(top.val)
        }
        return res
    }
}

let head = ListNode(1)
head.next = ListNode(3)
head.next!.next = ListNode(2)
Solution().reversePrint(head)

