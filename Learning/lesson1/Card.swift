
//
//  Card.swift
//  Learning
//
//  Created by ChengYan on 16/3/15.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation
struct Card {
    var rank:Rank
    var suit:Suit
    func simpleDescription()->String{
        return "the \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

}