//
//  Extendable.swift
//  WeScan
//
//  Created by Thomson Reuters on 13/11/19.
//  Copyright © 2019 Thomson Reuters. All rights reserved.
//

import Foundation
import UIKit

/// Objects that conform to the Transformable protocol are capable of being transformed with a `CGAffineTransform`.
protocol Transformable {
    
    /// Applies the given `CGAffineTransform`.
    ///
    /// - Parameters:
    ///   - t: The transform to apply
    /// - Returns: The same object transformed by the passed in `CGAffineTransform`.
    func applying(_ transform: CGAffineTransform) -> Self

}

extension Transformable {
    
    /// Applies multiple given transforms in the given order.
    ///
    /// - Parameters:
    ///   - transforms: The transforms to apply.
    /// - Returns: The same object transformed by the passed in `CGAffineTransform`s.
   public func applyTransforms(_ transforms: [CGAffineTransform]) -> Self {
        
        var transformableObject = self
        
        transforms.forEach { (transform) in
            transformableObject = transformableObject.applying(transform)
        }
        
        return transformableObject
    }
    
}
