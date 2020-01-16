//
//  RotationArrayMaxsum.swift
//  DS_Demo
//
//  Created by Satendra Singh on 06/04/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

//---Maximum sum of i*arr[i] among all rotations of a given array


import Foundation

class maxSumArray {
    init() {
    }
    //  5 6 2 4 = 5*0 + 6*1 + 2*2 + 4*3
    func maxSumRotateArr(_ arr: [Int]) -> Int {
        var sum = 0
        var carrentSum = 0
        var maxSum = 0
        for var i in 0..<arr.count {
            sum += arr[i]
            
            carrentSum = i * arr[i]
            
        }
        maxSum = carrentSum
        
        for var i in 0..<arr.count {
            maxSum = carrentSum - (sum - arr[i-1]) + arr[i-1] * arr.count-1
            
            carrentSum = maxSum
            
        maxSum = max(maxSum, carrentSum)
            
        }
        return maxSum
    }
    
    
    func getDuplicateString(_ value: String){
        var data: Array<Character> = Array("1231336")
    
        var dataV = [2,3,4,3,6,1,7,2]
        
        for var i in 0..<dataV.count {
            if (dataV[abs(dataV[i])]) > 0 {
                dataV[abs(dataV[i])]  = -dataV[abs(dataV[i])]
            } else {
                print("its repeteated::: \(dataV[i])")
            }
    }
        
       print(dataV)
    
    }
    
    
    func getDupliateCharInSecondString(data1:String,data2:String,len1:Int,len2:Int) -> Bool {
        
        var str1: Array<Character> = Array(data1)
        var str2: Array<Character> = Array(data2)
        
        if len1 == 0 {
            return true
        }
        if len2 == 0 {
            return false
        }
        
        if str1[len1] == str2[len2] {
            return getDupliateCharInSecondString(data1: data1, data2: data2, len1: len1-1,  len2: len2-1)
        }
        
        return getDupliateCharInSecondString(data1: data1, data2: data2, len1: len1,  len2: len2-1)
        
        
        
    }
    
    
    
}
