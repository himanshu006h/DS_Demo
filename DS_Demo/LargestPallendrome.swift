//
//  File.swift
//  DS_Demo
//
//  Created by Satendra Singh on 28/03/19.
//  Copyright © 2019 Satendra Singh. All rights reserved.
//

import Foundation

class Pallendrome {
    init() {
    }
    
func findPallendrone(_ arr: Array<Character>, leftIndex: Int, rightIndex:Int ) -> String {
    var leftIndex = leftIndex
    var rightIndex = rightIndex
    while (leftIndex >= 0 && rightIndex < arr.count)  {
        if arr[leftIndex] != arr[rightIndex] {
            break
        } 
    leftIndex -= 1
    rightIndex += 1
    }
    
    return String(arr[leftIndex + 1..<rightIndex])
    
    }
    
    
    func longestPallendrome(_ arr:String) -> String {
        
        var index = 0
        var result = String()
        var pallendrome = String()
        let arr: Array<Character> = Array(arr)
        
        while (index < arr.count) {
            
            if result.count >= (arr.count - index) * 2 {
                break
            }
            
            pallendrome = findPallendrone(arr, leftIndex: index, rightIndex: index)
            
            if pallendrome.count > result.count {
                result = pallendrome
            }
            pallendrome = findPallendrone(arr, leftIndex: index, rightIndex: index + 1)
            if pallendrome.count > result.count {
                result = pallendrome
            }
            
            index += 1
        }
        
        return result

    }
    
    
   /// arrage string and check pallindrome--- amdam ->madam
    
//    func checkPallindrom(word: String) -> Bool {
//        var count = [Int]()
//        var str:Array<Character> = Array(word)
//
//        for i in 0..<str.count {
//
//            let  number = Int(String(str[i]))!+1 // convert into number
//            count.append(number)
//        }
//
//        var odd = 0
//
//        for i in 0..<256 {
//            if count[i] == 1 {
//                odd += 1
//            }
//            if odd > 1 {
//                return false
//            }
//
//        }
//
//        return true
//    }
    
    
}
