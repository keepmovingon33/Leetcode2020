import UIKit

// Linked List implementation

public class LLNode<T> {
    var value: T
    var next: LLNode?
    var previous: LLNode?
    
    public init(value: T) {
        self.value = value
    }
}



public class LinkedList<T> {
    public typealias Node = LLNode<T>
    
    private var head: Node?
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else { return nil }

        while let next = node.next {
            node = next
        }
        
        return node
    }
    
    public var count: Int {
        guard var node = head else { return 0 }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        
        return count
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            // at least one node in the list
            newNode.previous = lastNode
            newNode.next = nil
            lastNode.next = newNode
        } else {
            // no nodes in list
            head = newNode
        }
    }
}

let list = LinkedList<String>()
list.first
list.last
list.count
list.append(value: "one")
list.count
list.append(value: "two")
list.count
