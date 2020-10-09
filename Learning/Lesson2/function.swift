//
//  function.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation

/// 返回值为元组的函数
func minMax(arr:[Int]) -> (Min:Int, Max:Int)? {
    if arr.isEmpty {
        return nil
    }
    var curMin : Int = arr[0]
    var curMax : Int = arr[0]
    
    for obj in arr[1...]{
        if curMin < obj {
            curMin = obj
        }
        if curMax > obj {
            curMax = obj
        }
    }
    return(curMin,curMax)
}

/// 可变参数，可以传递任意多个参数
func vars<N>(members:N...) {
    for oob in members{
        print(oob)
    }
}

func oooob<C>(members:C...) -> Void {
    print(members)
}

func sum(a:Int, b:Int) -> Int{
    let c = a + b
    return c
}

func div(a:Int , b :Int) -> Int {
    let d = a - b
    return d
}

func another(addition:(Int,Int)->Int,a:Int,b:Int){
    let sum = addition(a,b)
    print("\(sum)" + "sum=======")
}

