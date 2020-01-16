//
//  DoublyLinklist.swift
//  DS_Demo
//
//  Created by Satendra Singh on 04/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class NodeDoubly<T> {
    var data : T
    var previourNode : NodeDoubly?
    var nextNode : NodeDoubly?
    
    init(data: T,previousNode: NodeDoubly? = nil, nextNode: NodeDoubly? = nil) {
        self.data = data
        self.nextNode = nextNode
        self.previourNode = previousNode
    }
}
    
  class DoublyLinklist<T> {
        
        var startNode : NodeDoubly<T>?
        var previousNode: NodeDoubly<T>?
        
     func append(element: T) {
        let item = NodeDoubly<T>(data: element)

        if var node = self.startNode {
            while node.nextNode != nil {
                node = node.nextNode!
            }
            node.nextNode = item
            node.nextNode?.previourNode = node
            } else {
            self.startNode = item
        }
        
        }
    
    func insertAtPosition(element: T,position: Int) {
        
        var item = NodeDoubly(data: element)
        
        if var node = self.startNode {
            for _ in 0..<position {
               self.previousNode = node
                node = (self.previousNode?.nextNode)!
            }
            
            self.previousNode?.nextNode = item
            item.nextNode = node
            
            
        } else {
            self.startNode = item
        }
    }
    
    
    func deleteatPosition(position: Int) {
        
        if var node = self.startNode {
            for _ in 0..<position {
                self.previousNode = node
                node = node.nextNode!
            }
            
            self.previousNode?.nextNode = node.nextNode
            node.nextNode?.previourNode = self.previousNode
        }
        else
        {
          //  NO Node
            
        }
        
        
    }
    
    }
