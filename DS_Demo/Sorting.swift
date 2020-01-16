//
//  FindGender.swift
//  DS_Demo
//
//  Created by Satendra Singh on 16/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation
import UIKit

func swap<T>(left: inout T, right: inout T){
let temp = right
    right = left
    left = temp
}

struct Sorting<T : Comparable> {
    init(){}
        
    func mergeSort(arr1: [Int], arr2: [Int]) -> [Int] {
        
        var arr1Index = 0
        var arr2Index = 0
        var sortedSubList = [Int]()
        
        while arr1Index < arr1.count && arr2Index < arr2.count {
            if arr1[arr1Index] < arr2[arr2Index] {
                sortedSubList.append(arr1[arr1Index])
                arr1Index += 1
            } else if arr1[arr1Index] > arr2[arr2Index] {
                sortedSubList.append(arr2[arr2Index])
                arr2Index += 1
            } else {
                sortedSubList.append(arr1[arr1Index])
                arr1Index += 1
                sortedSubList.append(arr2[arr2Index])
                arr2Index += 1
            }
        }
        
        while arr1Index < arr1.count {
            sortedSubList.append(arr1[arr1Index])
            arr1Index += 1
        }
        
        while arr2Index < arr2.count  {
            sortedSubList.append(arr2[arr2Index])
            arr2Index += 1
        }
        print (sortedSubList)
        return sortedSubList
    }
    
}

