/* Impose an ordering on the State. */
open util/ordering[Node]

sig LinkedList { 
head : lone Node
}
sig Node {
link : lone Node 
}
pred true {}
pred false { not true }

pred hasLoop(slow: Node, fast: Node) {
    slow = LinkedList.head
    fast = LinkedList.head
    fast = fast.next

    !no fast.next && !no fast.next.next && fast != slow {
        slow = slow.next          // 1 hop
        fast = fast.next.next     // 2 hops 
	
        slow == fast {
	true // cycle exists 
	}
    }
   false  // fast reached null, so no cycle
}

run hasLoop
