
import UIKit

class Solution {
    
    func lengthOfLastWord(_ s: String) -> Int {
        
        if s.count <= 0 { return 0 } //空字符串 返回0
        
        if !s.contains(" ") { return s.count } //不包含空格，返回字符串的长度
        
        if s == " " { return 0 } //" " 返回0
        
        
        var firstblank = -1 //从后往前第1个空格位置
        //var secondblank = -1 //从后往前第2个空格位置
         var blanklen = -1
        
        for d in 0...s.count-1 {
                   
            let offset = s.count - 1 - d
            
          //  print("d = \(d);offset =\(offset)")
            let char:Character = s[s.index(s.startIndex,offsetBy:offset)]
            if char == Character.init(" ")  {
                
                if firstblank == -1 {
                    if offset < s.count - 1 {
                        blanklen = d
                        break
                    }else {
                       firstblank = offset
                    }
                    
                }else if firstblank - offset > 1{
                    blanklen = firstblank - offset - 1
                    break
                }else {
                    firstblank = offset
                }
                
            }
                   
        }
        
        if blanklen == -1 {
            blanklen = firstblank
        }
        
        
        return blanklen
        
        
    } //lengthOfLastWord
    
    
} //class Solution

print("num = \(Solution().lengthOfLastWord("da "))")

