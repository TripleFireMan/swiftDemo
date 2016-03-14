//
//  main.swift
//  lesson1
//
//  Created by ChengYan on 16/3/7.
//  Copyright © 2016年 chengyan. All rights reserved.
//  本章节对应swift官方文档中的swift——tour


import Foundation

print("Hello, World!")

//值并不会隐式的进行初始化

/*-------------------    介绍俩种将数字转换为字符串的方法    -------------------*/

//方法1:将值用 \（）包起来
let lbl = "标签"
let s1 = 64

var transformNumberToStringMethod_1 = lbl + "\(s1)"

//方法2:使用显式的字符串转换方法
var transformNumberToStringMethod_2 = lbl + String(s1)

//下面看看实际运行效果
print("transformNumberToStringMethod_1 = \(transformNumberToStringMethod_1)")
print("transformNumberToStringMethod_2 = \(transformNumberToStringMethod_2)")

/*-------------------    数组和字典的创建     -------------------*/

//方法1:直接创建法
var shops = ["家乐福","唐久","美特好"]

var capitals = ["中国":"北京","日本":"东京","美国":"华盛顿"]

print(shops)

print(capitals["中国"])

//方法2:调用初始化方法 创建空数组和空字典

var emptyArrayInitFunc_1 = [String]()
var emptyArrayInitFunc_2 = []
var emptyDictionaryInitFunc_1 = [String:Float]()
var emptyDictionaryInitFunc_2 = [:]

/*---控制流---*/

let scores = [80,90,100,40,50,30,66,77,86,99]
var team_score:Int = 0

for score in scores {
    if (score > 50){
        team_score += 3
    }else{
        team_score += 1
    }
}

print(team_score)


var optional_string:String? = "hello"
print(optional_string == nil)

var optional_name:String? = "成焱"
var greeting = "😄"
optional_name = nil

if let name = optional_name {
    print(greeting + name)
}else{
    greeting = "snake"
    print(greeting)
}

//swift switch语句不仅支持数字 而且支持各种类型

let color = "red"

switch color
{
    case "green":
        print("color is greed")
    case "red":
        print("color is red")
    case let x where x.hasSuffix("ed"):
        print("haha")
    default:
        print(11)
}

//swift 中进行一个字典的遍历操作
let prime = "Prime"
let fibonacii = "Fibonacii"
let square = "Square"
let interesting_numbers = [prime:[2,3,5,7,11,13],
                       fibonacii:[1,1,2,3,5,8],
                          square:[1,4,9,16,25]] //这是一个保存有趣的数字的字典
var largest = 0

for (key,values) in interesting_numbers {
    for value in values {
        if value >  largest {
            largest = value
        }
    }
}

print("largest = \(largest)")


