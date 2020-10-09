//
//  Struct.swift
//  Lesson2
//
//  Created by 成焱 on 2020/10/9.
//  Copyright © 2020 chengyan. All rights reserved.
//

import Foundation
struct Person {
    var language = 100
    var maths = 99
    var phy = 80
    
    init(lang:Int,math:Int,phy:Int) {
        self.language = lang
        self.maths = math
        self.phy = phy
    }
    
    func say() -> Void {
        print(language,maths,phy)
    }
}
