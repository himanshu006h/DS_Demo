//
//  DynamicProg.swift
//  DS_Demo
//
//  Created by Satendra Singh on 26/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class DP {
    
    init() {
    }
     // find max combination [-2,1,-3,4,-1,2,1,-5,4]
    func CongigousSubArrayWithinArray(_ dataArray: [Int]) -> [Int] {
        var number = dataArray
        var best = number[0]
        var current = number[0]

        for i in 1..<dataArray.count {
            current = max(current + number[i], number[i])
            best = max(current,best)
    }
         print ("lastgestSum---\(best)")
        return [best]
    }
    
    
    func missingNo(_ arr: [Int]) ->Int {
      var arrData = [5,6,1,4,3]
        
        
        let total = (arrData.count + 1 ) * (arrData.count + 2) / 2
        var sum = 0
        for i in 0..<arrData.count {
          sum += arrData[i]
        }
        print (total - sum)
        return (total - sum)
        
    }
    
     ////--- IMP--
    
//    func sort012(_ arr: [Int]) -> [Int]{
//        var aarr = arr
//        var min = aarr[0]
//        var high = aarr[aarr.count-1]
//        var mid = aarr[0]
//
//        while mid <= high {
//
//            switch aarr[mid] {
//            case 0:
//                var temp = aarr[min]
//                aarr[min] = aarr[mid]
//                aarr[mid] = temp
//                mid ++
//                min ++
//            case 1:
//                mid ++
//
//            case 2:
//                var temp = aarr[mid]
//                aarr[mid] = aarr[high]
//                aarr[high] = temp
//                high --
//            default:
//                print ("Not found")
//            }
//
//        }
//
//    }
    
    
    func equliburium_leftsum_equal_rightSum(_ arr: [Int]) -> Int {
        var sum = 0
        var leftSum = 0
        
        for i in 0..<arr.count {
            sum += arr[i]
        }
        
        for i in 0..<arr.count {
           sum -= arr[i]
            
            if leftSum == sum {
                return arr[i]
            }
            
            leftSum += arr[i]
        }

        return -1
    }
    
    //find all pairs of an integer array whose sum is equal to a given number?
    //  [2,4,6,8,15,1,5] expected combination sum is 17
    func checkSumCOmbination(_ dataArr: [Int], sum: Int) {
        
        var checkCombinationArr = [Int]()
        for var i in 0..<dataArr.count {
            
            let remainData = sum - dataArr[i]
            
            if remainData > 0 && checkCombinationArr.contains(remainData) {
                print ("combination is : \(remainData) and \(dataArr[i])")
            }
            
            checkCombinationArr.append(dataArr[i])
        }
        
    }
    
    
  //  Arrange given numbers to form the biggest number
    
  //---  Note: arrance in assending order first first
   // {1, 34, 3, 98, 9, 76, 45, 4} -> 998764543431
    
//    func ArrangeInMaxDigit(_ num:[Int]) -> [Int] {
//     var maxDegit = [Int]()
//        for i in 0..<num.count {
//            var XY = maxDegit
//            var YX = [Int]()
//            XY.append(num[i])
//
//            YX.append(num[i])
//            YX.append(maxDegit)
//
//            if XY > YX {
//             maxDegit = XY
//            } else {
//                maxDegit = YX
//            }
//        }
//    }
    
    
    //----Permutations of a given string---
  //   ABC -> ABC,ACB,BAC,BCA,CAB,CBA

//    func getPermutation() {
//        var dataValue = "ABC"
//
//        checkPermutation(dataValue,i: 0,size: dataValue.count)
//
//    }
//
//    func checkPermutation(_ str: String,i : Int, size: Int)  {
//
//        var str = str
//
//        guard size == 0 else { return }
//
//        for j in 0..<size {
//           swap(str[i], str[j])
//           checkPermutation(str, i: i+1, size: size)
//             swap(str[i], str[j])
//        }
//    }
    
    func ATOIheck() -> Int {
        var str = "123456987"
        var result = 0
        for charValue in str {
            guard let charIntValue = Int(String(charValue)),
                let zeroIntValue = Int(String(Character("0"))) else {
                    return 0
            }
            result = result * 10 + charIntValue - zeroIntValue
        }
        
        return result
    }
    
}
