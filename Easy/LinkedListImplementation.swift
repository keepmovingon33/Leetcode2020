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
}

let list = LinkedList<String>()
list.first
list.last
