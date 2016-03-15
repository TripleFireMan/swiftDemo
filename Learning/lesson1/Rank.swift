//
//  Rank.swift
//  Learning
//
//  Created by ChengYan on 16/3/15.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation
enum Rank :Int{
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    case jack
    case queue
    case king
    
    func simpleDescription()->String{
        switch self{
        case.ace:
                return "Ace"
        case.jack:
                return "Jack"
        case.queue:
                return "Queue"
        case.king:
                return "King"
        default:
                return String(self.rawValue)
        }
    }
    
    func compare(rank1:Rank)->Bool{
        return self.rawValue > rank1.rawValue
    }
}