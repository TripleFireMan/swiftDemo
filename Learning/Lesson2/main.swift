//
//  main.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation

typealias Fee = Int

print("Hello, World!")

/// 声明一个数组
let name:[Int] = [1,2,3]
for a in name[1...]{
    print(a)
}

let dic:NSDictionary = ["age":12,"name":"22222"]
let dic2:[String:Int] = ["222":22,"333":333]
print(dic2.keys)
print(dic2.values)
print(dic2.isEmpty)
for (key, value) in dic2{
    print(key,value)
}

print(dic)
print(dic2)

var stu = Student.init()
stu.age = 100
stu.printage()
stu.testGuard()

let arr = [1,3,5,2,4,6]
if let obj:(Min:Int,Max:Int) = minMax(arr: arr){
    print(obj.Min,obj.Max)
}


vars(members: "北京","山海","2222")
oooob(members: 1,3,4,4,5)
//print(Student.init().width)
another(addition: sum, a: 10, b: 20)
another(addition: div, a: 100, b: 5)

/*闭包捕获外部变量与嵌套函数*/
let inc =  makeIncrease(amount: 10)
print(inc())
print(inc())
print(inc())


/*-----枚举-------*/
var day = DaysOfWeek.Monday
day = .Tuesday
switch day
{
case.Monday:
    print("星期一")
case.Tuesday:
    print("星期二")
default:
    print("其他")
}

var tea = Teacher.name("嘎嘎")
tea = .sex(1)
switch tea
{
case .name(let studentname):
    print("名字：\(studentname)")
case.sex(let studentsex):
    print("性别：\(studentsex)")
}

var stu1 = Person.init(lang: 100, math: 88, phy: 77)
stu1.say()

    
var lbody = body.init(name: "chengyan")
var rbody = body.init(name: "chengyan")

if lbody === rbody{
    print(" the same")
}
else{
    print("not the same")
}
