//
//  Shape.swift
//  Learning
//
//  Created by ChengYan on 16/3/15.
//  Copyright © 2016年 chengyan. All rights reserved.
//

import Foundation

class Shape {
    var numbers_of_side = 0
    func simpleDescription() ->String{
        return "A Shape with \(numbers_of_side) sides"
    }
}


class NewShape {
    var number_of_side :Int = 0
    var name : String
    
    init(name:String) {
        self.name = name
    }
    
    init() {
        self.name = "Nothing"
    }
    
    func simpleDescription() -> String {
        return "\(self.name) with \(self.number_of_side) sides"
    }
}

class Square: NewShape {
    var sideLength:Double
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        self.number_of_side = 4
    }
    
    func area() ->Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A Square with sideLength \(sideLength)"
    }
}

class Circle: NewShape {
    var radius:Double
    let PI:Double = 3.141592653
    init(radius:Double,name:String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area()->Double{
        return PI * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "\(name) with radius \(radius)"
    }
}


class EquilateralTriangle: NewShape {
    var side_length:Double = 0.0
    init(sideLength:Double,name:String) {
        side_length = sideLength
        super.init(name: name)
        number_of_side = 3
    }
    
    var perimeter:Double{
        get{
            return side_length * 3
        }
        set(newPerimeter){
            side_length = newPerimeter/3
        }
    }
    
    override func simpleDescription() -> String {
        return "\(name) with sideLength \(side_length)"
    }
}

class TriangleAndSquare: NewShape {
    var triangle:EquilateralTriangle{
        didSet{
            square.sideLength = triangle.side_length
        }
    }
    
    var square:Square{
        didSet{
            triangle.side_length = square.sideLength
        }
    }
    
    init(sideLength:Double,name:String) {
        triangle = EquilateralTriangle(sideLength: sideLength, name: name)
        square = Square(sideLength: sideLength, name: name)
        super.init(name: name)
    }
}
