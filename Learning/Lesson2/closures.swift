//
//  closures.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation
/// 不带参数，不带返回值的闭包
let studentname = {print("hello world")}
let noreturnValues = {
    var boy:String = "boy"
    var girl :String = "girl"
    print("\(boy)love \(girl)")
}

/// 带参数，带返回值的闭包
let div = {(a: Int , b : Int) -> Int in
    return a / b
}

/// 闭包作为参数传递
var names = ["AA","ED","DC"]
let sorted =  names.sorted(by:{$1 < $0})


/// 闭包捕获外部变量
func makeIncrease(amount : Int) -> () -> Int {
    var initValue = 0
    func increase()->Int{
        initValue += amount
        return initValue
    }
    return increase
}


