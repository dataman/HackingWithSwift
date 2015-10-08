//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

import UIKit

extension Int {
    mutating func plusOne() {
        ++self
    }
    
    static func random(min min: Int, max: Int) -> Int {
        if max < min { return min }
        return Int(arc4random_uniform((max - min) + 1)) + min
    }
}

Int.random(min: 1, max: 10)
10.random(min: 1, max: 10)

extension UIColor {
    static func chartreuseColor() -> UIColor {
        return UIColor(red: 0.875, green: 1, blue: 0, alpha: 1)
    }
}

func fadeOut(duration: NSTimeInterval) {
    UIView.animateWithDuration(duration) { [unowned self] in
        self.alpha = 0
    }
}

extension String {
    mutating func trim() {
        self = stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
}
