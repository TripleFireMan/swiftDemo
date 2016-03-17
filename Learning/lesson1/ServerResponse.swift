//
//  ServerResponse.swift
//  Learning
//
//  Created by ChengYan on 16/3/17.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation

/*  一个枚举成员的实例可以有实例值 ---> (注：即let success = ServerResponse.Result("日升","日落"))。
    相同枚举成员的实例可以有不同的值 --> (let success = ServerResponse.Result("日升","pm 5：00")
                                        (let success = ServerResponse.Result("日落","am 6：00"))。创建实例的时候传入值即可。
    实例值和原始值是不同的:枚举成员的原始值对于所有实例都是相同的,而且你是在定义枚举的时候设置原始值*/
//

enum ServerResponse {
    case Result(String,String) //原始值就是Result.在定义的时候已经定义了
    case Error(String)         //原始值就是Error.在定义的时候已经定义了
}