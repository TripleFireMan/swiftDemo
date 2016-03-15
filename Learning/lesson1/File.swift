//
//  File.swift
//  Learning
//
//  Created by ChengYan on 16/3/15.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation

enum Suit:Int{
    case Spades
    case Hearts
    case Diamonds
    case Clubs
    
    func simpleDescription()->String
    {
        switch self{
        case.Spades:
                return "Spades"
        case.Hearts:
                return "Hearts"
        case.Diamonds:
                return "Diamonds"
        case.Clubs:
                return "Clubs"
        }
    }
    
    func color()->String{
        switch self {
        case.Spades,.Clubs:
            return "Red"
        case.Hearts,.Diamonds:
            return "Black"
        }
    }
}