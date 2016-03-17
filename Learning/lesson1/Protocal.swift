//
//  Protocal.swift
//  Learning
//
//  Created by ChengYan on 16/3/17.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation

protocol ExampleProtocol{
    var simpleDescription: String {get}     //定义了一个协议的属性
    mutating func adjust()                  //定义了一个协议的方法
}

class SimpleClass:ExampleProtocol {
    var simpleDescription:String = "这就是一个字符串"
    func adjust() {
        simpleDescription += ".haha"
    }
}

struct SimpleStruct :ExampleProtocol {
    var simpleDescription:String = "简单结构体"
    
    mutating func adjust() {
        simpleDescription += "\n，没事你走俩布"
    }
}

enum SimpleEnum:ExampleProtocol{
    case Acfun(String)
    case Bilibili(String)
    
    var simpleDescription:String {
        get{
            return "简单枚举类"
        }
        set{
//            simpleDescription = newValue
//            newValue
//            self.simpleDescription = newValue
        }
    }
    mutating func adjust() {
        simpleDescription += ".走就走，who 怕 who"
    }
}

class Girl {
    var size_of_hip :Double
    var size_of_bosom :Double
    var size_of_waist :Double
    var height :Double
    
    func washClothes(){
        "洗衣做饭样样通"
    }
    
    func cookmeal(){
        "会做中西各种大餐"
    }
    
    func makeLove(){
        "全部姿势已解锁"
    }
    
    func description()->String{
        return "腰围 \(size_of_waist), 胸围 \(size_of_bosom), 臀围 \(size_of_hip)"
    }
    
    init() {
        size_of_hip = 89.98
        size_of_bosom = 84.66
        size_of_waist = 56.44
        height = 166
    }
}


func repeatTime<Item>(item:Item,numberOfTime:Int)->[Item]{
    var result = [Item]()
    for _ in 0..<numberOfTime {
        result.append(item)
    }
    return result
}