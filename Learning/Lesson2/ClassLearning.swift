//
//  ClassLearning.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation

/// 类似声明oc的属性
@objcMembers
class Student : NSObject{
    
    let width = 100 + 3.1415926
    /// 常量
    let a: Int = 2

    
    
    /// 变量可选类型声明方式1
    var age : Int?
    /// 变量可选类型声明方式2，大致等于方式1
    var weight : Optional<Float>
    /// 变量可选类型声明方式3,会将可选类型的值，进行解包
    var score : Int!
    
    
    /// 变量-非可选类型 必须要由初始值
    var name : String
    /// 变量
    var height : Float
    
    override init() {
        height = 200
        name = "chengyan"
        weight = 80
        
    }
    
    func printage(){
        if let tem = self.age {
            print(tem)
        }
        else{
            print("nil")
        }
    }
    
    func testGuard() -> Void {
        
        /// 解包值,利用guard进行解包，省了一个声明变量的过程，且后续还可以访问到
        guard let tem_height = self.age else {
            return
        }
        
        let  body = tem_height + 100
        
        print("\(body)的值\(age!)")
        
    }
    
}
