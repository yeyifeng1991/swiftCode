//: Playground - noun: a place where people can play

import UIKit

class Person:NSObject
{
    var age:Int = 0
    // 如果写一个方法是对父类的某一个方法进行重写，那么必须在该方法前加上override
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}

let p = Person()
p.age = 20
//p.setValuesForKeys(<#T##keyedValues: [String : Any]##[String : Any]#>)


