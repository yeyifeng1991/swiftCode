//
//  ViewController.swift
//  swiftCode
//
//  Created by YeYiFeng on 2018/4/8.
//  Copyright © 2018年 叶子. All rights reserved.
//

import UIKit

// 类的定义
// student中规定：对象中的任何属性在创建对象时，都必须有明确的初始值
//class Student: NSObject {
//    var nameS:String
//
//
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 类型推倒 强类型的语言
        // option + 鼠标左键 查看类型
        //        let i  = 10
        //        let i:Int = 10 => let i  = 10 类型推倒
        let i  = 10 // option + 鼠标左键
        
        let b = 22.44
        
        let view = UIView()
        
        /*
         var m :Int
         m = 10
         */
        // 2. 基本运算
        /*
         let m  = 10
         let n = 3.14
         let result = <#value#>
         // 整型转为浮点型
         let tempM = Double(m)
         let tempN = Int(n)
         */
        
        // 3.逻辑分支
        // 3.1 if语句
        // 1. if()小括号可以省掉
        // 2. 判断句不再有非0即真
        let a = 10
        if a>0 {
            print("a>0")
        }
        else
        {
            print("a<=0")
        }
        //3.2 else if
        let score = 92
        if score<0 || score > 100{
            print("不合理的分数")
        }
        else if score<60{
            print("不及格")
        }
        
        // 3.3 三目运算
        /*
         let m = 30
         let n = 20
         var result = 0
         if m>n {
         result = m
         }
         else
         {
         result = n
         }
         */
        
        /*
         let m = 30
         let n = 20
         let result = m > n ? m : n
         */
        
        // 3.4 guard 函数中使用
        
        let  age = 20
        online(age: age) // 调用函数
        
        // 3.5 switch
        // 1.switch 后面的()省略
        // 2. case后面的break 可以省略
        //
        // sex = 0时为男的 sex = 1为女的
        let sex = 0
        /*
         switch sex {
         case 0:
         print("男")
         //  fallthrough // 穿透 可以继续执行下方
         case 1:
         print("女")
         default:
         print("其他")
         }
         */
        
        switch sex {
        case 0,1:
            print("正常人")
        default:
            print("其他")
        }
        // 基本用法补充
        // fallthrough // 穿透 可以继续执行下方
        // case 后面可以判断多个条件
        //  3.5.1 switch可以判断浮点型
        //  3.5.2 switch可以判断字符串
        
        let opration = "+"
        switch opration {
        case "+":
            print("是加号")
        case "-":
            print("是减号")
        case "*":
            print("是乘号")
        case "/":
            print("是除以")
        default:
            print("其他情况")
        }
        //  3.5.3 switch可以判断区间 重点
        
        let num = 80
        // 0..<10  0 - 10 不包括10
        // 0...10  0 - 10 包括10
        switch num {
        case 0..<60:
            print("不及格")
        case 60...100:
            print("及格")
        default:
            print("默认成绩")
        }
        
        //4. 循环 for / while / do while
        // for 后面()可以省略
        //        for var i = 0; i < 10 ;i += 1 {
        //            print(i); // swift3已经被移除
        //        }
        for i in 0...10 {
            print(i)
        }
        
        var  num1 = 30
        
        // while循环
        while num>0 {
            print(num1)
            num1 -= 1
        }
        
        // do while循环
        repeat {
            num1 += 1
            print(num1)
        } while num1<10
        
        
        
    }
    // 函数
    func online(age : Int) {
        //        if age>18 {
        //            print("可以上网")
        //        }
        //        else{
        //            print("回家吧")
        //
        //        }
        // guard条件为true,执行最后面的语句
        // guard条件为false,执行else后面的
        /*
         guard age >= 18 else {
         print("回家吧")
         return
         }
         guard 带了身份证 else {
         print("回家拿身份证")
         return
         }
         guard 带了钱 else {
         print("回家拿钱")
         return
         }
         */
        
        print("可以上网")
     // 添加代码
        // 6.字符串
        // 1.字符串的定义
        let opration = "hello word"
//        for c in opration.characters {
//            print(c)
//        }
        
        let str1 = "hello"
        let str2 = "world"
        let str3 = str1 + str2
        // 2.字符串的拼接
        let info = "第一个参数\(str1) 第二个参数 \(str2)"
        
        // 3.拼接字符串，字符串的格式化
//        String
        let min = 2
        let second  = 15
        let timeString = String(format: "%02d:%02d", arguments:[min,second])

        // 4.字符串的截取
        //字符串的截取
        let urlStr = "www.zhengyanfeng.com"
        
        //将String类型转换为NSString类型
        
        
        let header = (urlStr as NSString).substring(to: 3)
        
        let body = (urlStr as NSString).substring(with: NSRange(location: 4, length: 12))
        
        let afterbody = (urlStr as NSString).substring(from: 17)
        
      // 7. 数组
        // 1.定义数组
        // 可变数组 var
        
//        var arrayM = Array<String>()// 需要声明类型
        var arrayM = [String]()// 也是创建一个可变数组
        // 不可变数组 let
        
        let array = ["why","zy","zy1","zy2","zy3",]
        
        // 2.对可变数组的基本操作
        // 添加
        arrayM.append("a")
        arrayM.append("b")
        arrayM.append("c")
        arrayM.append("d")
        // 删除
        arrayM.remove(at: 2)
        // 修改
        arrayM[0] = "A"
        // 取出
//        arrayM[2]
        // 3.数组的遍历
        // 3.1 根据下标值进行遍历
        for i in 0..<array.count {
            print(array[i])
        }
        // 3.2
        for name in array {
            print(name)
        }
        // 遍历数组的前两个元素
//        for i in 0..<2 {
//            print(array[i])
//        }
        for name1 in array[0..<2] {
            print(name1)
        }
        // 4.数组和合并
        // 注意相同数组的类型才可以进行合并，不同类型不能进行合并
        let resultArray = array + arrayM
        
        
        // 8.字典
        // 定义字典 (增删改查)
        // 定义不可变字典 系统自动判断后面的[]是键值对，还是一个个元素
        let dict = ["name":"lmj" ,"age":20,"height":1.86] as [String : Any]
        // 定义可变字典 AnyObject
//        var dictM = [String:NSObject]()
        var dictM = [String:NSObject]()

        // 对可变字典的操作
        // 添加元素
        dictM["name"] = "why" as NSObject
        dictM["age"] = 18 as NSObject
        dictM["weight"] = 70 as NSObject
        // 删除元素
        dictM.removeValue(forKey: "weight")
        // 修改元素 如果字典中已经有了对应的key,那会直接保存key中的value
        dictM["name"] = "why1" as NSObject

        // 获取元素
//        dictM["age"]
        
        // 遍历字典
        //3.1 遍历字典所有的key
        for key in dictM.keys {
            print(key)
        }
        //3.2 遍历字典所有的value
        for value in dictM.values {
            print(value)
        }
        //3.3 遍历所有的键值对
        for (key,value) in dictM {
            print(key)
            print(value)
        }
        // 合并字典
        // 即时类型一致，也不能相加进行合并
        var dic1 = ["age":18,"name":"xiaoming"] as [String : Any]
        let dic2 = ["height":186,"num":"+86 150"] as [String : Any]
        for (key,value) in dic2 {
            dic1[key] = value
        }
        
        //9.元组的使用 (一般用于作为方法的返回值)
        // 使用数组定义一组数据
//        let array1 = ["why",18,19] as [Any]
        //1. 使用元组定义数据 元组最基本的写法
        let info1 = ("why",18,1.88)
//        info1.0
        //2. 给每一个元素起一个别名
        let info2 = (name:"why",age:18,height:1.88)
//        info2.name
//        info2.age
//        info2.height
        
        //3. 元组中元素的别名就是元组的名称
        let (name,age,height) = ("why",18,1.88)
//        name
//        age
//        height
        
        //10. 可选类型
        // swift中较难理解的一个知识点
        // 1.方式一:常规方式(不常用)
//        var nameK : Optional<String> = nil
        // 1.方式二：语法糖(常用)
        var nameK1 : String? = nil
        nameK1 = "why"
        print(nameK1)// Optional("why")
        // 2.取出可选类型的值 注意：如果可选类型为nil，强制解包系统会崩溃
        // 3.可选类型 + ! 强制解包
        print(nameK1!)
        
        if nameK1 != nil //建议在强制解包之前，对可选类型进行判断，判断是否为nil
        {
            print(nameK1!)
        }
        
        // 4.可选绑定
        // 1.判断name是否有值，如果没有，直接不执行{}
        // 2.如果name有值，系统会自动将name进行解包，并且解包后的结果赋值给tmpName
        // 写法一
        if let tmpName = nameK1 {
            print(tmpName)
        }
        // 写法二 就近原则
        if let nameK1 = nameK1  {
            print(nameK1)
        }
        // 可选类型应用场景
        // 通过一个字符串创建一个NSURL对象
        
        let url : NSURL? = NSURL(string:"http://www.520it.com")
        // 根据url创建NSURLRequest对象
        if let url = url {
            let request = NSURLRequest(url: url as URL)
            
        }
        
        //11. 函数
        about()
        let string = readMessage()
        
        sum(num1: 2, num2: 3)
        //12. 类的定义
        //13.类的构造函数
        //14.闭包
        // 15.懒加载
        
        

}
   
//没有参数没有返回值
   
//    func about() -> Void {
//        print("没有参数没有返回值")
//    }
    func about()  {
        print("没有参数没有返回值")
    }
//没有参数有返回值
    func readMessage() -> String {
        return "没有参数有返回值"
    }
// 有参数没有返回值
    func callPhone(phoneNum:String)  {
        print("打电话 \(phoneNum)")
    }
// 有参数有返回
    func  sum(num1:Int ,num2:Int) -> Int {
        return num1+num2;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

