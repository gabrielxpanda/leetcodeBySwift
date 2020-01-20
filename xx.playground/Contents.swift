
import UIKit

class Solution {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var result = 0
        
        if nums.count == 1 {
            result = nums[0]
        }
        
        
        if nums.count > 1{
            
            var total = 0
            
            nums.map { (num)  in
                total = total + num
            }
            
            var narr = nums
            narr.removeFirst()
            print(narr)
            let max = self.maxSubArray(narr)
            print("max = \(max)")
            if max > max + nums[0] {
                result = max
            }else {
                result = max + nums[0]
            }
            
        }
        
        return result
        
    }
    
}

print(Solution.init().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))



/*
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
            let rarray =  temp.map { (cha) -> Int in
                return (cha.wholeNumberValue ?? 1)
            }
            
            print("rarray = \(rarray)")
          
            var xx = rarray.last
            var count = 1
            
            for index in 0...rarray.count - 2 {
                
                var ff = rarray.count - 2 - index
                
                if rarray[ff] == xx {
                    count =  count + 1
                    
                }else{
                    result = String(count) + String(xx!) + result
                    xx = rarray[ff]
                    count = 1
                }
                if ff == 0 {
                    result = String(count) + String(xx!) + result
                }
                
            }
            
            print(result)
            
        }
        
        return result
    }
    
}

Solution().countAndSay(7)

*/

