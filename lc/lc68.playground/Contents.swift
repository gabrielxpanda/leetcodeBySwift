
import UIKit
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        
        
        var resultstr = ""
        
        var a_index = a.index(before:a.endIndex)
        var b_index = b.index(before:b.endIndex)
        
        var a_finish = false
        var b_finish = false
        var addon = false //进位
        
        while !(a_finish && b_finish) {
            
            print("a_index = \(a_index)")
            print("b_index = \(b_index)")
            
            var ac = a[a_index]
            var bc = b[b_index]
            
            print("ac = \(ac)")
            print("bc = \(bc)")
            
            if a_finish {
                ac = Character("0")
            }
            
            if b_finish {
                bc = Character("0")
            }
            
            if ac == Character("1")&&bc == Character("1") {
                
                if addon {
                    resultstr = "1" + resultstr
                }else{
                    resultstr = "0" + resultstr
                }
                addon = true
                
            }else if ac == Character("0")&&bc == Character("0") {
                
                if addon {
                    resultstr =  "1" + resultstr
                }else{
                    resultstr =  "0" + resultstr
                }
                
                addon = false
            }else{
                
                if addon {
                    resultstr =  "0" + resultstr
                    addon = true
                }else{
                    resultstr = "1" + resultstr
                    addon = false
                }
                
            }
            
            if a_index != a.startIndex {
                a_index = a.index(before: a_index)
            }else{
                a_finish = true
            }
            
            if b_index != b.startIndex {
                b_index = b.index(before: b_index)
            }else{
                b_finish = true
            }
            
        }
        
        if addon {
            resultstr = "1" + resultstr
        }
        
        return resultstr
        
    }
}

print("num = \(Solution().addBinary("10","10"))")

