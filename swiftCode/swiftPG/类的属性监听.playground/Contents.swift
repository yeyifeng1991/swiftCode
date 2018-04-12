//: Playground - noun: a place where people can play

import UIKit

class Person:NSObject{
    // 属性监听器
    var name : String?
    {
        // 属性即将改变时进行监听
        willSet{
//            print(name) // nil 初始值
            print(newValue) // nil 初始值

        }
        // 属性已经改变时进行监听
        didSet{
//            print(name)
            print(oldValue)

        }
    }
   
    
  
}

let p = Person()
p.name = "yz"
//p.name = "yz1"

