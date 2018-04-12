//: Playground - noun: a place where people can play

import UIKit

class Student:NSObject{
    // 定义属性
    // 定义存储属性
    var age:Int = 0
    var name:String? // 可选类型
    var mathScore :Double = 0.0
    var chinacore :Double = 0.0
        //定义极端属性
    var averScore:Double
    {
        return (mathScore+chinacore)*0.5
    }
      // 定义类属性：类属性和整个类相关的属性，而且通过类名进行访问
    
    static var courseCount:Int = 0
    
}
Student.courseCount = 2// 给类属性赋值
let s = Student()
s.name = "yz"
s.age = 10
s.mathScore = 78
s.chinacore = 90
print(s.age)
if let name = s.name{
    print(name)
}
let averScore = (s.mathScore + s.chinacore) * 0.5 // 平均成绩

