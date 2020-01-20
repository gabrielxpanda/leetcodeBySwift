
//https://leetcode-cn.com/problems/search-insert-position/
/*
import UIKit
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
       
        if nums.count < 1 {
            return 0
        }
        
        if target < nums[0] {return 0}
        if target > nums.last! {return nums.count}
        
        
        var left = 0
        var right = nums.count - 1
        var mid = (right + left)/2
        var result = -1
        
        var isOK = true
        repeat{
          
            mid = (right + left)/2
            
            if nums[mid] == target{
                
                result = mid
                isOK = false
                
            }else if nums[mid] < target {
                if mid == left {
                    isOK = false
                    result = mid + 1
                }else{
                   left = mid
                }
                
            }else if nums[mid] > target {
                
                if mid == left {
                   isOK = false
                   result = left
                }else{
                    right = mid
                }
                
            }
            
            
            
        } while (isOK)
        
        
        return result
        
    }
}
*/

/*
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 
 */


import UIKit

class Solution {
    
    func countAndSay(_ n: Int) -> String {
       
        var result = ""
       
        if n == 1 {result =  "1"}
        if n == 2 {result =  "11"}
        if n == 3 {result =  "21"}
        if n == 4 {result =  "1211"}
        if n == 5 {result =  "111221"}
        
        if n > 5 {
            
            
            
            let temp = self.countAndSay(n-1)
            let rarray =  temp.map { (cha) -> Int? in
            return cha.wholeNumberValue
            }
            
            print("rarray = \(rarray)")
            
        }
        
        return result
    }
    
}

//Solution().countAndSay(100)

