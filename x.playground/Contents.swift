/*
 
 https://leetcode-cn.com/problems/merge-two-sorted-lists/
 
 将两个有序链表合并为一个新的有序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

 示例：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4

 
 */

/*
 
 //第一种方式：将节点放到数组重新排序，然后创建新的单链表
 //时间复杂度
 //空间f
import UIKit

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
     }
  }
 

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        
        var result : ListNode? = nil
        
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        var l1head:ListNode? = l1
       var l2head:ListNode? = l2!
       var xarray : [Int] =  [Int]()
        
        repeat {
            xarray.append(l1head!.val)
            l1head = l1head?.next
        } while (l1head != nil)
        
        repeat {
            xarray.append(l2head!.val)
            l2head = l2head?.next
        } while (l2head != nil)
        
        //print(xarray)
        var sortArray = xarray.sorted(by: <)
        
        var finalresult : ListNode? = nil
       // print(sortArray)
        sortArray.map { (_ val:Int)  in
            if result == nil {
                result = ListNode(val)
                if  finalresult == nil {
                    finalresult = result
                }
                
            }else {
                result!.next = ListNode(val)
                result = result!.next
            }
            
            }
        
        
        result = nil
        return finalresult
    }
}

 */

/*
 
 //递归解决
import UIKit

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
     }
  }
 

class Solution {
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       
        if l1 == nil {
            return l2
        }else if l2 == nil {
            return l1
        } else if l1!.val <= l2!.val {
            l1!.next = self.mergeTwoLists(l1!.next, l2)
            return l1!
        }else{
            l2!.next = self.mergeTwoLists(l1, l2!.next)
            return l2!
        }
        
    }
    
    
}

*/

/*
import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var kcount = 0
        
        if nums.count > 1 {
            
            
            var left = 0
            var right = 1
            var isOK = true
            
            repeat {
                
                if nums[left] == nums[right] {
                   
                    right = right + 1
                    
                }else if nums[left] < nums[right] {
                    
                    left = left + 1
                    nums[left] = nums[right]
                    right = right + 1
                }
                
                if right >= nums.count {
                    isOK = false
                }
                
            }while(isOK)
            
            kcount = left + 1
        }
        
        return kcount
    }
}

 */

/*
import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if nums.count < 1 {
            return 0
        }
        
        if nums.count == 1 {
            if nums[0] == val {
                return 0
            }else {
                return 1
            }
        }
        
        var count = 0
        
        var left = 0
        var right = nums.count - 1
        
        var isOK = true
        
        repeat {
            
            
            while nums[right] == val {
                right = right - 1
                
                if right < 0 {
                    break
                }
            }
            
            while nums[left] != val {
                left = left + 1
                if left > nums.count - 1 {
                    
                    break
                }
            }
            
            if left > right {
                isOK = false
            }else {
               nums[left] = nums[right]
               nums[right] = val
            }
            
        } while(isOK)
        
        
        count = left
        
        
        return count
    }
}
*/
/*
import UIKit
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
       
        if needle.isEmpty {
            return 0
        }else if haystack.isEmpty {
            return -1
        } else if needle.count > haystack.count {
            return -1
        }else if needle.count == haystack.count {
            if needle.elementsEqual(haystack) {
                return 0
            }
            return -1
        }else if !haystack.contains(needle) {
            return -1
        } else {
          let arr =  haystack.components(separatedBy: needle)
            if arr.count > 0 {
                return arr.first!.count
            }
            return -1
        }
        
    }
}
*/

import UIKit
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
    }
}
