//
//  ClassStudy.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation

class body {
    var name : String!
    init(name:String) {
        self.name = name
    }
}

func ===(l:body,r:body) -> Bool {
    return l.name == r.name
}
