//
//  Stack.swift
//  DS_Demo
//
//  Created by Satendra Singh on 06/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class TreeNode<T>{
    
    var data : T
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(data: T,
         leftNode: TreeNode? = nil,
         rightNode: TreeNode? = nil) {
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
    
    func minimumNode(element: TreeNode<T>?) -> TreeNode<T>?{
        var node = element
        while let item = node?.leftNode {
            node = item
        }
        return node
    }
    
    func maxNode(element: TreeNode<T>?)->T?{
        var node = element
        while let item = node?.rightNode{
            node = item
        }
        return node?.data
    }
    
}

class Queue <T> {
    var dataArray : [T] = []
   
    func enque(item: T){
        dataArray.append(item)
    }
    
    func deque() -> T{
        let dequeItem =  dataArray.removeFirst()
        return dequeItem
    }
    
    var isEmpty: Bool{
        return dataArray.isEmpty
    }
    
    var count: Int{
        return dataArray.count
    }
}

class  Stack<T> {
    
    var dataArray: [T] = []
    
    func push(element: T){
        self.dataArray.append(element)
    }

    func pop() -> T
    {
        let data = self.dataArray.removeLast()
        
        return data
    }
    
    var isEmpty: Bool{
       return self.dataArray.isEmpty
    }
    
    func printData(){
        for i in dataArray{
            print("Stack inserted Value is : \(i)")
        }
    }
    func lastElement() -> T {
        return self.dataArray.last!
        
    }
    
}
    
    class BinaryTree<T> {
        var rootNode : TreeNode<T>?
         var stack : Stack<TreeNode<T>> = Stack<TreeNode<T>>()
        private var queue: Queue<TreeNode<T>> = Queue<TreeNode<T>>()
        
        func append(element: T){
            let item = TreeNode(data: element)
            if let node = self.rootNode {
                append(rootNode: node, item: item)
            } else {
                rootNode = item
            }
        }
        
        func deleteNode(element: T){
            let node = TreeNode(data: element)
            
            if var item = self.rootNode {
             var tt =  deleteNode(rootNode: item, node: node.data)
            }else {
                self.rootNode = nil
            }
        }
        
        func heightTree(){
            
            findHeight(rootNode: self.rootNode)
        }
        func inOrderTree(){
            
            inOrderTree(rootNode: self.rootNode)
        }
        
        
        func levelOrder(){
            levelOrder(rootNode: self.rootNode)
        }
        
        func reverseLevelOrder(){
            reverse_LevelOrder(rootNode: self.rootNode)
        }
        
        func depestNode(){
        depestNode(rootNode: self.rootNode)
        }
        
        func fullNode(){
            fullNode(rootNode: self.rootNode)
        }
        
        func mirrorEffect(){
            mirrorEffect(rootNode: self.rootNode)
        }
        
        func leastCommonAnsister(){
        }
        
    }
    
extension BinaryTree{
    
    func append(rootNode: TreeNode<T>, item: TreeNode<T>){
        if rootNode.data as! Int > item.data as! Int {
            
            if var node = rootNode.leftNode {
            append(rootNode: node, item: item)
            }else {
                rootNode.leftNode = item
            }
        } else if (rootNode.data as! Int) < (item.data as! Int) {
            if let node = rootNode.rightNode{
            append(rootNode: node, item: item)
            } else
            {
                rootNode.rightNode = item
            }
        }
    }
    
    func deleteNode(rootNode: TreeNode<T>?, node: T) -> TreeNode<T>?{
        
      //  guard let _ = rootNode els e {return }
        var rootNode = rootNode
        
        if (rootNode?.data as! Int) > (node as! Int) {
          rootNode?.leftNode = deleteNode(rootNode: rootNode?.leftNode, node: node)
        } else if (rootNode?.data as! Int) < (node as! Int) {
            rootNode?.rightNode = deleteNode(rootNode: rootNode?.rightNode, node: node)
        }else{
            // yeea Found node to be delete
            
             //--- if node have left and right child
            if rootNode?.leftNode != nil && rootNode?.rightNode != nil{
                let minimumNode = rootNode?.minimumNode(element: rootNode?.rightNode)
                rootNode?.data = minimumNode!.data
                rootNode?.rightNode = deleteNode(rootNode: rootNode?.rightNode, node: minimumNode!.data)
            } else if rootNode?.leftNode == nil {
                //  node has only right node
            rootNode = rootNode?.rightNode
            } else if rootNode?.rightNode == nil {
                // if node has only left node
                rootNode = rootNode?.leftNode
            } else {
                // node has 0 leaf node
                rootNode = nil  // let delete node
                
            }
        }
        return rootNode

    }
    
    
    func findHeight(rootNode : TreeNode <T>?) {
        
        guard let _ = rootNode else {return}
        
        let leftNodeCount  = 0
        let  rightNodeCount = 0
        let height = leftNodeCount > rightNodeCount ? leftNodeCount + 1 : rightNodeCount + 1
        
        print("Height of node is \(height)")
    }
    
    func inOrderTree(rootNode : TreeNode<T>?) {
        
        guard let _ = rootNode else { return }
    
         inOrderTree(rootNode: rootNode?.leftNode)
         print (rootNode?.data)
         inOrderTree(rootNode: rootNode?.rightNode)
    }
    
    
    func levelOrder(rootNode: TreeNode<T>?){
        
        guard let node = rootNode else {return}
        self.queue.enque(item: node)
        
        while !self.queue.isEmpty {
            guard let dequeueNode: TreeNode<T> = self.queue.deque() else {return}
            
            if let leftNode = dequeueNode.leftNode{
                self.queue.enque(item: leftNode)
            }
            if let rightNode = dequeueNode.rightNode{
                self.queue.enque(item: rightNode)
            }
        }
        
    }
    
    func reverse_LevelOrder(rootNode: TreeNode<T>?){
        
        guard let node = rootNode else {return}
      
        self.queue.enque(item: node)
        
        while !self.queue.isEmpty {
            guard let item: TreeNode<T> = self.queue.deque() else {return}
            print ("Deque element --->\(String(describing: rootNode?.data))")

            /// stack need to add
            self.stack.push(element: item)
           
            if var rightNode = item.rightNode{
                self.queue.enque(item: rightNode)
            }
            if var leftNode = item.leftNode{
                self.queue.enque(item: leftNode)
            }
            
        }
        self.stack.printData()
        
    }
    
    func depestNode(rootNode: TreeNode<T>?){
        
        guard let _ = rootNode else {return}
        
        var leftCount: Int = 0
        var rightCount: Int = 0
        
        if let leftNode = rootNode?.leftNode{
            depestNode(rootNode: rootNode?.leftNode)
            leftCount += 1
        } else if let rightNode = rootNode?.rightNode{
            depestNode(rootNode: rootNode?.rightNode)
            rightCount += 1
        }
        
        if leftCount > rightCount {
            print ("DepestNode----\(rootNode?.data)")
        }
        else {
            print ("DepestNode----\(rootNode?.data)")
        }
    }
    
    func fullNode(rootNode: TreeNode<T>?){
        // which have bothNode
        
        guard let _ = rootNode else {return}
        
        if (((rootNode?.leftNode) != nil) && ((rootNode?.rightNode) != nil)) {
            print("My FirstNode is ::: \(String(describing: rootNode?.data))")
        }
        
        fullNode(rootNode: rootNode?.leftNode)
        fullNode(rootNode: rootNode?.rightNode)
    }
    
    func mirrorEffect(rootNode: TreeNode<T>?){
        
        guard let _ = rootNode else { return }
        
        var tempNode : TreeNode<T>?
        if (rootNode?.leftNode != nil) && (rootNode?.rightNode != nil) {
            tempNode = rootNode?.leftNode
            rootNode?.leftNode = rootNode?.rightNode
            rootNode?.rightNode = tempNode
        }
        mirrorEffect(rootNode: rootNode?.leftNode)
        mirrorEffect(rootNode: rootNode?.rightNode)
        
        
    }
    
    func leastCommonAnsister(rootNode: TreeNode<T>?,p: T?, q: T?) -> TreeNode<T>? {
      guard let _ = rootNode else { return rootNode  }
      
        if rootNode?.data as! Int == p as! Int && rootNode?.data as! Int == q as! Int {
          return rootNode
        }
        
        let left: TreeNode<T>? = leastCommonAnsister(rootNode: rootNode?.leftNode, p: p, q: q)
        let right: TreeNode<T>? = leastCommonAnsister(rootNode: rootNode?.rightNode, p: p, q: q)
        
        if left != nil && right != nil {
            return rootNode
        } else {
            return  ((left != nil) ? left : right)
        }

    }
    
    
    
    func ispair(_ openChar: Character, _ closingChar: Character) -> Bool {
        
        if openChar == "[" && closingChar == "]"{
            return true }
        if openChar == "{" && closingChar == "}" {
            return true }
        if openChar == "(" && closingChar == ")" {
            return true }
        else {
            return false
        }
        
    }
    
    
    
    func isParanthese(_ data: String) -> Bool {
        var dataArr: Array<Character> = Array(data)
        
        for i in 0..<dataArr.count {
            if dataArr[i] == "[" || dataArr[i] == "{" || dataArr[i] == "(" {
                self.stack.push(element: dataArr[i] as! TreeNode<T>)
            } else if dataArr[i] == "]" || dataArr[i] == "}" || dataArr[i] == ")"  {
                if self.stack.isEmpty || (ispair(self.stack.lastElement().data as! Character, dataArr[i]) == false) {
                return false
                } else {
                self.stack.pop()
                }
        }
    }
        return true
}

    
}
