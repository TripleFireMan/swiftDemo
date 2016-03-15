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

//swift 中的while 控制语句

var n = 2
while n < 100 {
    n = n * 2
}

print("n = \(n)")

var m = 2
repeat {
    m *= 2
}while m < 100
print("m = \(m)")

var first_for_loop = 0
for i in 0..<4 {
    first_for_loop += i
}

print(first_for_loop)

var second_for_loop = 0

for var i = 0; i < 4; i++ {
    second_for_loop += i
}

print(second_for_loop)

func greeting (name:String, day:String)->String{
    return "Hello \(name), today is \(day)"
}

print(greeting("chengyan", day: "20160314"))

/*************************一个函数告诉你元组是什么鬼**************************/
func caculateStatistics (scores:[Int]) ->(min:Int,max:Int,sum:Int){
   
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if  score > max {
            max = score
        }else if score < min {
            min = score
        }
        
        sum = score + sum
    }
    
    return (min, max, sum)
}

var statistics = caculateStatistics([3,5,7,9,10])

print(statistics.min)

print(statistics.0)

/***************************可变个数参数*************************/

func sum(numbers:Int...)->Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}

print(sum())
print(sum(1,2,3))

func average(numbers:Int...)->Int{
    
    var sum = 0
    for number in numbers{
        sum += number
    }
    
    let count = numbers.count
    let average = sum / count
    return average
}

print(average(1,2,3))

/***************************函数可以嵌套***************************/

func fifteen()->Int {
    var y = 10
    func add (){
        y += 5
    }
    add()
    return y
}

print("函数进行嵌套使用 fifteen() = " + "\(fifteen())")

/***************************函数可以作为返回值***************************/
func makeIncrementer()->(Int->Int){
    //可以理解为回调
    func addOne(number:Int)->Int {
        return 1 + number
    }
    return addOne
}

var make = makeIncrementer()
print("函数作为返回值 makeIncrementer()(10) = " + "\(makeIncrementer()(10))")//第一层括号是返回的函数，第二层括号是函数进行调用

/***************************函数可以作为参数传递***************************/
func hasAnyMatchs(numbers:[Int],contition:(Int->Bool))->Bool{
    for number in numbers {
        if contition(number){
            return true
        }
    }
    return false
}

func lessThanTen(number:Int)->Bool{
    if number < 10{
        return true
    }else {
        return false
    }
}

var sco = [8,100,30,49,60]
let anyMatch = hasAnyMatchs(sco, contition: lessThanTen)
print("hasAnyMatchs : \(anyMatch)")

//强大的swift语言体现的淋漓尽致，屌爆
var ns = sco.map({
    (n:Int)->String in
    let result  = String(5 * n)
    return result
})
//当闭包是最后一个参数可以直接写在括号里面
var l = sco.map({number in number * 3})

//当闭包是最后一个参数且是为一个参数是，括号也可以省略
var ms = sco.map{number in String(number)}
var sort = sco.sort{$0>$1}
print(ns)
print(l)
print(ms)
print(sort)

//类的简单使用
var shape = Shape()
var newshape = NewShape(name: "fang")
shape.numbers_of_side = 10

print(shape.simpleDescription())
print(newshape.simpleDescription())

//矩形
var sq = Square(sideLength: 20.0,name: "矩形")
print("sq.area = \(sq.area())")
print("sq = \(sq.simpleDescription())")

//圆
var circle = Circle.init(radius: 5, name: "snajiaoban")
print(circle.area())
print(circle.simpleDescription())

//等边三角形
var triangle = EquilateralTriangle(sideLength: 15, name: "等边三角形")
print(triangle.perimeter)
triangle.perimeter = 9
print(triangle.side_length)

//等边三角形和矩形
var triangleAndSquare = TriangleAndSquare(sideLength: 20, name: "erheyi")
print(triangleAndSquare.triangle.side_length)
print(triangleAndSquare.square.sideLength)
triangleAndSquare.square = Square(sideLength: 10, name: "juxing")
print(triangleAndSquare.triangle.side_length)

//枚举
let ace = Rank.ace
let acerowvalue = ace.rawValue
print(ace.simpleDescription())
print(ace.rawValue)

let suit :Suit = .Hearts
let heartDescription = suit.simpleDescription()
print(heartDescription)


//结构体

let threeOfSpades = Card(rank:.three,suit:.Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription();
print(threeOfSpadesDescription)
