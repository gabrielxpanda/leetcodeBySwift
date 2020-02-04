
import UIKit

class Solution {
    
    func mySqrt(_ x: Int) -> Int {
       
    
        
        if x <= 3 {
            return 1
        }
        
        var did = false
        
        var result = 0
        var left = 1
        var right = x
        var mid = x / 2
        
        while !did {
           
            if mid*mid == x {
                
                did = true
                result = mid
                
            }else if mid*mid < x {
                
                left = mid
                mid = (right + left)/2
                
            }else{
                
                right = mid
                mid = (right + left)/2
                
                
            }
            
            if right - left == 1 {
                did = true
                result = left
            }
            print("left = \(left);right = \(right)")
        }
        
        return result
    }
    
}

print("num = \(Solution().mySqrt(1000))")

