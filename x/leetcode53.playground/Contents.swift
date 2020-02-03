
import UIKit

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        if s.count == 0 {
            return 0
        }
        
        if !s.contains(" ") {
            return s.count
        }
        
        var len = 0
        
        for num in 0...s.count-1 {
            let char:Character = s[s.index(s.startIndex,offsetBy: s.count-1-num)]
            if char == Character.init(" ")  {
                len = num
                break
            }
        }
        return len
        
    }
}

print("s=\(Solution().lengthOfLastWord("Hello World"))")

