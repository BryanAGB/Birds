//
//  Configuration.swift
//  Birds
//
//  Created by Bryan on 10/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import CoreGraphics

struct PhysicsCategory {
    static let none: UInt32 = 0
    static let all: UInt32 = UInt32.max
    static let edge: UInt32 = 0x1
    static let bird: UInt32 = 0x1 << 1
    static let block: UInt32 = 0x1 << 2
    
}

extension CGPoint {
    static public func + (left: CGPoint, right: CGPoint) ->CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    static public func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    static public func * (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x * right, y: left.y * right)
    }
    
}
