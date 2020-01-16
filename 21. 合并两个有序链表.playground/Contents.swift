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
