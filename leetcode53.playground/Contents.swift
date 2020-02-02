
import UIKit

class Solution {
    
    func maxSubArray(_ nums: [Int]) -> Int {

        if nums.count < 1  { return 0 }
        if nums.count == 1 { return nums[0]}

        
        var maxsum = 0
        var temp = 0
        var maxunderzero = 0
        var underzerocount = 0
        
        for index in 0...nums.count-1 {
            
            if nums[index] < 0 {
                underzerocount = underzerocount + 1
                if maxunderzero == 0 {
                  maxunderzero = nums[index]
                }else {
                    if nums[index] > maxunderzero {
                        maxunderzero = nums[index]
                    }
                }
                
                if temp + nums[index] > 0 {
                    temp = temp + nums[index]
                }else{
                    temp = 0
                }
                
            }else{
                temp = temp + nums[index]
            }
            
            if temp >  maxsum{
                maxsum = temp
            }
        }
        
        if underzerocount == nums.count {
            return maxunderzero
        }
        return maxsum

    }
}



 print("maxnum=\(Solution().maxSubArray([-2,-1]))")
