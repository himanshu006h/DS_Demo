//
//  Searching.swift
//  DS_Demo
//
//  Created by Satendra Singh on 23/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class Searching{
    init() { }
    
    //merge sort
    func soring(_ firstHalfArr:[Int], secondHalfArr:[Int])->[Int] {
       var firstHalfIndex = 0
        var secondHalfIndex = 0
        var sortedDataArr = [Int]()
        
        while firstHalfArr.count > firstHalfIndex && secondHalfArr.count > secondHalfIndex {
            if firstHalfArr[firstHalfIndex] < secondHalfArr[secondHalfIndex]{
                sortedDataArr.append(firstHalfArr[firstHalfIndex])
                firstHalfIndex += 1
            } else if firstHalfArr[firstHalfIndex] > secondHalfArr[secondHalfIndex]{
                sortedDataArr.append(secondHalfArr[secondHalfIndex])
                 secondHalfIndex += 1
            } else {
                sortedDataArr.append(firstHalfArr[firstHalfIndex])
                firstHalfIndex += 1
                sortedDataArr.append(secondHalfArr[secondHalfIndex])
                secondHalfIndex += 1
            }
            
        }
    
        while firstHalfArr.count > firstHalfIndex {
            sortedDataArr.append(firstHalfArr[firstHalfIndex])
            firstHalfIndex += 1
        }
        
        while secondHalfArr.count > secondHalfIndex {
            sortedDataArr.append(secondHalfArr[secondHalfIndex])
            secondHalfIndex += 1
        }
        
        return sortedDataArr
    }
    
    func sortingData(_ dataArr:[Int]) -> [Int] {
        guard  dataArr.count > 1 else { return dataArr }
        
        let center = dataArr.count / 2
        let firstHalfArr = sortingData(Array(dataArr[0..<center]))
        let secondhalfArr = sortingData(Array(dataArr[center..<dataArr.count]))
        return soring(firstHalfArr, secondHalfArr: secondhalfArr)
    }
    
    func dublicateNumberFind(_ dataArr:[Int]){
        
        let sortedData = sortingData(dataArr)
        
        for var index in 0..<sortedData.count {
            if sortedData[index] == sortedData[index + 1] {
                print ("metchfound-- \(sortedData[index])")
            }
        }
    }
    
    func find_sum(_ dataArr:[Int], expectedSum: Int) {
        var sortedArr = sortingData(dataArr)
        
        var minIndex = 0
        var maxIndex = sortedArr.count - 1
        while minIndex < maxIndex {
            
            let sum = sortedArr[minIndex] + sortedArr[maxIndex]
            
            if sum == expectedSum {
                print("Found sum value \(sortedArr[minIndex]) and \(sortedArr[maxIndex])")
                return
            } else if sum < expectedSum  {
                minIndex += 1
            } else {
                maxIndex -= 1
            }
            
        }

    }
    
    func findColosestToZero(_ dataArr:[Int]){
        var sortedArr = sortingData(dataArr)
        var minIndex = 0
        var maxIndex = sortedArr.count-1
        var positiveMax = INT_MAX
        var negativeMax = INT8_MIN
        
        while minIndex < maxIndex {
            var temp = sortedArr[minIndex] + sortedArr[maxIndex]
            if temp > 0 {
                if temp < positiveMax {
                    positiveMax = Int32(temp)
                }
                maxIndex -= 1
            } else if temp < 0 {
                if temp > negativeMax {
                    negativeMax = Int32(temp)
                }
            }
            else {
                print("closest Sum: \(sortedArr[maxIndex]) \(sortedArr[minIndex])")
            }
        }
   
    }
    
    
func BinarySearch(_ dataArr:[Int], data:Int ) {
        
   var startNode = 0
   var endNode = dataArr.count - 1
        while (startNode <= endNode){
            let midNode = startNode + (endNode - startNode) / 2
            
            if (dataArr[midNode] == data) {
                return print(midNode)
            } else if dataArr[midNode] > data {
                endNode = midNode - 1
            } else {
                startNode = midNode + 1
            }
        }
    }
    
}
