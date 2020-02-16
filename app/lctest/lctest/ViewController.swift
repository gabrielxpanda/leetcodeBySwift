//
//  ViewController.swift
//  lctest
//
//  Created by Gabrielx on 2020/2/4.
//  Copyright © 2020 Gabriel Fire Panda. All rights reserved.
//

import UIKit
/*
class Solution {
    
    var cachedic : Dictionary = Dictionary<Int, Int>()
    func climbStairs(_ n: Int) -> Int {
        
        if n==1 { return 1 }
        if n==2 { return 2 }
        if n==3 { return 3 }
        
        for num in 4...n {
            
                   var n_1 = 0
                   var n_2 = 0
                   
                   if (cachedic[num-2] != nil) {
                       n_2 = cachedic[num-2]!
                   }else{
                     n_2 = climbStairs(num-2)
                     cachedic[num-2] = n_2
                   }
                   
                   if (cachedic[num-1] != nil) {
                       n_1 = cachedic[num-1]!
                   }else{
                     n_1 = climbStairs(num-1)
                     cachedic[num-1] = n_1
                   }
        }
        
        
        
        
        return cachedic[n-1]!+cachedic[n-2]!
    }
    
   
}
*/


//Definition for singly-linked list.
/*
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }
 
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
       
        if head == nil { return head }
        
        var p = head!
        
        while p.next != nil {
           
            
            if p.val == p.next!.val {
                p.next = p.next!.next
            }else{
                p = p.next!
            }
            
        }
        return head!
    }
}
*/

//Definition for a binary tree node.
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }
 
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {

        if p == nil && q == nil {

            return true

            }else if p != nil && q != nil {

            if p!.val != q!.val {
                      return false
            } else if p!.val == q!.val {
                return isSameTree(p!.left,q!.left) && isSameTree(p!.right,q!.right)
                   }

            }else {

                return false

            }
 return false
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
        
       // var r = Solution().climbStairs(40)
       // print("r = \(r)")
        
        var ss = [Int]()
        ss.append(<#T##newElement: Int##Int#>)
    }


}

