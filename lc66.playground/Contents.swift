
import UIKit

class Solution {
    
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var xxarray = [Int]()
        
        var addon = false
        
        for xx in 0...digits.count - 1 {
            
            let index = digits.count - 1 - xx
            
            if index == digits.count - 1 {
                
                if digits[index] + 1 >= 10 {
                    addon = true
                    xxarray.insert(0, at: 0)
                }else{
                    xxarray.insert(digits[index] + 1, at: 0)
                }
                
            }else {
                
                if addon {
                    if digits[index] + 1 >= 10 {
                        addon = true
                        xxarray.insert(0, at: 0)
                    }else{
                        addon = false
                        xxarray.insert(digits[index] + 1, at: 0)
                    }
                }else {
                     xxarray.insert(digits[index], at: 0)
                }
               
            }
           // print("xxarray = \(xxarray)")
        }
        if addon {
            xxarray.insert(1, at: 0)
        }
        return xxarray
        
    }
    
}

print("num = \(Solution().plusOne([1,2,3,4]))")

