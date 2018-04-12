//: Playground - noun: a place where people can play

import UIKit
// 继承于NSObject，可以重写父类方法
// 声明一个类
class Person:NSObject{
    var name:String?
    var age:Int = 0
    // 对父类方法重写
    override init() {
        print("-----")
    }
    // 自定义构造函数
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    init(dict:[String:AnyObject]) {
        let tmpName = dict["name"]
        // tmpName是个AnyObject的可选类型
        name = tmpName as? String //as?最终转成可选类型
        let tmpAge = dict["age"]
        age = tmpAge as! Int//as!最终转成的类型是一个确定的类型
        print(age)
        
        super.init()// 先调用super init 使用kvc前
        // kvc 赋值
    }
}
let p = Person()
let p1 = Person(name: "yz", age: 18)
print(p1.name)

let p2 = Person(dict: ["name" : "yz" as AnyObject,"age":18 as AnyObject])



