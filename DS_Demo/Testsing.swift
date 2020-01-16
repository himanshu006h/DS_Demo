//
//  Testsing.swift
//  DS_Demo
//
//  Created by Satendra Singh on 29/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation
import  UIKit

class TreeNode1<T> {
    var data: T
    var leftNode: TreeNode1?
    var rightNode: TreeNode1?
    init(data: T, leftNode: TreeNode1? = nil, rightNode:TreeNode1? = nil) {
        self.leftNode = leftNode
        self.rightNode = rightNode
        self.data = data
    }
    
    func minNode(element: TreeNode1<T>?) -> TreeNode1<T>?{
        var item = element
        
        while let node = item?.leftNode {
               item = node
        }
        return item
    }
    func maxNode(element: TreeNode1<T>?) -> TreeNode1<T>? {
        var item = element
        
        while let node = item?.rightNode {
            item = node
        }
        return item
    }
    
}


fileprivate class BinaryTree1<T>{
    var rootNode: TreeNode1<T>?
    
    
    func InorderTravers(rootNode: TreeNode1<T>) {
        
    }

}
