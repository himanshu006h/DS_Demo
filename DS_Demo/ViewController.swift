//
//  ViewController.swift
//  DS_Demo
//
//  Created by Satendra Singh on 02/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let linklist = Linklist<Int>()
let doublyLinklist = DoublyLinklist<Int>()
let searching = Searching()
let maxSum = maxSumArray()
    
    let dp = DP()
    
    let sorting = Sorting<Int>()

let tree = BinaryTree<Int>()
    override func viewDidLoad() {
        
        var arr = [2,3,4,5]
        var arr1 = arr
        print (arr1)
        arr = [arr.remove(at: 0)]
        print (arr)
        print (arr1)
                
        callingTestingData()
        dp.CongigousSubArrayWithinArray([-2,1,-3,4,-1,2,1,-5,4])
        dp.missingNo([5,3,1,2])
        
        let pallendrome = Pallendrome()
        pallendrome.longestPallendrome("mdaam")
      //  pallendrome.checkPallindrom(word: "NITIN")
        
       appendLinklist()
//        inertNode()
//        inserAtpostion()
//
//        // Doubly LinkList
//
//        appendDoublyLinklist()
        
        
        addTreeNode()

   var ll =  mergeSort([38,27,43,3,9,82,10])
   ll += [50]
        print (ll)
        
        
        binarySearching()
    }
        
    
    func binarySearching() {
    //    searching.BinarySearch([2,5,20,25,100,200,300,802], data: 100)
        
        // Dublicate Number Found
    //    searching.dublicateNumberFind([10,20,2,5,80,1,100,33,20,5,22])
        
        // Find sum of k element
        searching.find_sum([5,10,34,2,9,20,200,80], expectedSum: 11)
        
    }
    
    
    func mergeSort(_ array: [Int]) ->[Int] {

        guard array.count > 1 else { return array  }
        
        let cutIndex = array.count / 2
        
        let arr1 = mergeSort( Array(array[0..<cutIndex]))
        let arr2 = mergeSort(Array(array[cutIndex..<array.count]))
        
     return  sorting.mergeSort(arr1: arr1, arr2: arr2)
        
    }
    
    
    func addTreeNode()
    {
       tree.append(element: 8)
        tree.append(element: 4)
        tree.append(element: 10)
        tree.append(element: 9)
        tree.append(element: 11)
        tree.append(element: 7)
        tree.append(element: 3)
        tree.append(element: 1)

        tree.deleteNode(element: 4)
        
       tree.leastCommonAnsister()
        
        print (tree)
        
//        tree.heightTree()
//
//
//        tree.inOrderTree()
//
        tree.levelOrder()
        
        tree.reverseLevelOrder()
        
        
        tree.depestNode()
        tree.fullNode()
        tree.mirrorEffect()
        
        print("Helloe")
        
    }
    
    
    
    func appendLinklist()  {
        linklist.appendNode(element: 8)
        linklist.appendNode(element: 2)
        linklist.appendNode(element: 10)
        linklist.appendNode(element: 9)
        linklist.appendNode(element: 11)
        linklist.appendNode(element: 8)
         linklist.appendNode(element: 8)
         linklist.appendNode(element: 8)

        linklist.printReverse(node: linklist.startNode!)
        linklist.checkCircularList()
        
        linklist.reverseLinklist()
        
        
        linklist.searchNode(element: 20)
        
        linklist.removeAt_postion(position: 4)

    }
    
    func inertNode(){
        linklist.insertNode_atBeginning(element:10)
        linklist.insertNode_atBeginning(element:20)
        linklist.insertNode_atBeginning(element:30)
        
    }
    
    func inserAtpostion() {
        linklist.insert_atPosition(element: 10, position: 0)
        linklist.insert_atPosition(element: 9, position: 1)
        linklist.insert_atPosition(element: 8, position: 2)
        
    }
    
    
    
    func appendDoublyLinklist()  {
        doublyLinklist.append(element: 3)
        doublyLinklist.append(element: 5)
        doublyLinklist.append(element: 10)
        doublyLinklist.append(element: 20)
        doublyLinklist.append(element: 21)
        doublyLinklist.append(element: 22)
        doublyLinklist.append(element: 23)
        
  //doublyLinklist.insertAtPosition(element: 55, position: 2)
        
    doublyLinklist.deleteatPosition(position: 3)
        
        
//        linklist.reverseLinklist()
//
//
//        linklist.searchNode(element: 20)
//
//        linklist.removeAt_postion(position: 4)
        
    }
    
    
    //Mark: Testing
    
    func callingTestingData() {
        
        maxSum.getDuplicateString("")
        
     //   maxSum.getDupliateCharinSecondString(data1: "AXY", data2: "LMNOPQACX", len1: 2, len2: 8)
        
    //  let test = BinaryTree1()
        
        
        
      //  let test = newClass()
      //  var test1 = newStruct()
        
//        print(test.days[0])
//        
//        print(test.days)
//        
//        
//        test.introduce()
//        test1.introduce()
//         test.introduce()
//         test1.introduce()
//
//        let call = Type()
//        call.Animal("Lion")
//        call.canEat()
//
//        let newCall: Movable = Type()
//        newCall.Animal("Cow")
//        newCall.canEat()

        let numbers = [2,4,6,5,3,7,9]
        let filtered = numbers.filter {
            $0 % 2 == 0
        }
        
        
        
        
    }
    
    
    
}

