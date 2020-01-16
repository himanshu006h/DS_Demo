//
//  Linklist.swift
//  DS_Demo
//
//  Created by Satendra Singh on 02/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class Node<T> {
    var data: T
    var next: Node?
    
    init(data: T,next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class Linklist<T> //: CustomStringConvertible where T: Comparable, T:CustomStringConvertible
{
    var description: String = ""
    
    public var startNode: Node<T>?
    
    var isEmpty: Bool {
        return self.startNode == nil
    }
    
    // append node from last
    func appendNode(element: T) {
        let item = Node(data: element)
        
        if var node = self.startNode {
            while(node.next != nil) {
                node = node.next!
            }
            node.next = item
        }
        else {
                self.startNode = item
            }
    }
    
    func insertNode_atBeginning(element: T)
    {
        let node = Node(data: element)
        node.next = self.startNode
        self.startNode = node
    }
    
    func insert_atPosition(element: T,position: Int)
    {
        var item = Node(data: element)
         if (position == 0){
            self.startNode = item
         } else {
            var nextNode = self.startNode
            var previourNode : Node<T>?
            
            for _ in 0..<position
            {
                previourNode = nextNode!
                nextNode = previourNode?.next
            }
            previourNode?.next = item
            item.next = nextNode
        }
    }
    
    func removeFirst()
    {
        self.startNode = self.startNode?.next
    }
    
    func removeAt_postion(position:Int)
    {
        var proviousNode = self.startNode
        var nextNode = self.startNode?.next
        
        for _ in 0..<position {
            proviousNode = nextNode
            nextNode = nextNode?.next
        }
        
        proviousNode?.next = nextNode?.next        
    }
    
    
    func searchNode(element: T){
        let item = Node(data: element)
        
        if var node = startNode {
            while (node.next != nil) {
            
                node = node.next!
                
                let nodedata : Int = node.data as! Int
                let itemdata: Int = item.data as! Int
                
                if nodedata == itemdata {
                    print("Metch Found")
                    return;
                }
            }
        } else
        {
            print ("Empty List")
        }
     
    }
    
    func reverseLinklist()
    {
        var node = self.startNode
        var nextNode : Node<T>? = self.startNode?.next
        var previousNode: Node<T>?
        while (node?.next != nil) {
            node?.next = previousNode
            previousNode = node
            node = nextNode
            nextNode =  node?.next
        }
        
        print (self.startNode)
        
    }
    
    
  //  check circular point:
    func checkCircularList(){
        
        var slowNode = self.startNode
        var fastNode = self.startNode
        
        while fastNode?.next?.next != nil {
            
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
            
            let sNode: Int = slowNode?.data as! Int
            let fNode: Int = fastNode?.data as! Int
            
            if sNode == fNode
            {
                print ("match Found")
            }
        }
   
    }
    
    
    func deleteNodeWithoutHeader(element : T) {
       let item = Node(data: element)
        
       let temp = item.next
        item.data = (temp?.data)!
        item.next = temp?.next
        
      //  free(temp)

    }
    
    func printReverse(node: Node<T>) {
        if(node.next == nil) {
            return
        }
        
        printReverse(node: node.next!)
        print(node.data)
    }
    
    
    
    
//    func additioninLinklist(_ additionValue:Int) {
//        
//        guard var startNode = self.startNode else {return}
//        
//        while startNode.next != nil {
//            
//            startNode.data = startNode.data) + additionValue
//        }
//        
//    }
    
    

}
