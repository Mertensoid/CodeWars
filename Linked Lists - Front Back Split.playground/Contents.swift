import UIKit

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func build(length: Int) -> Node? {
    var node: Node? = nil
    for index in (1...length) {
        let temp = node
        node = Node(index)
        node?.next = temp
    }
    return node
}

var front: Node? = nil
var back: Node? = nil
var source: Node? = build(length: 2)

enum Errors: Error {
    case error
}

func frontBackSplit(source: Node?, front: inout Node?, back: inout Node?) throws {
    
    if source == nil || source?.next == nil {
        throw Errors.error
    }
    var list = source
    var counter = 0
    var leftLength = 0
    var rightLength = 0
    
    while list != nil {
        list = list?.next
        counter += 1
    }
    rightLength = counter / 2
    leftLength = counter - rightLength
    
    list = source
    for _ in (1...leftLength) {
        list = list?.next
    }
    back = list
    var index = 0
    for _ in (1...leftLength) {
        list = source
        var count = leftLength - index - 1
        while count > 0 {
            list = list?.next
            count -= 1
        }
        let temp = front
        front = list
        front?.next = temp
        index += 1
    }

}

try frontBackSplit(source: source, front: &front, back: &back)

