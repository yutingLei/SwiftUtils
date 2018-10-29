//
//  SUImageUtils.swift
//  SwiftUtils
//
//  Created by admin on 2018/10/26.
//  Copyright © 2018 Develop. All rights reserved.
//

#if os(macOS)
import AppKit
public typealias SUImage = NSImage
#elseif os(iOS)
import UIKit
public typealias SUImage = UIImage
#endif

public extension SUImage {

    /// An instance method for resizing image
    ///
    /// - Parameter newSize: Reset image's size. type is CGRect or NSRect
    /// - Returns: Return an new image if succeed, otherwize self
    public func resizeTo(_ newSize: CGSize) -> SUImage {
        #if os(iOS)
        // Open context
        UIGraphicsBeginImageContext(newSize)

        // Draw image
        draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))

        // Get size
        let newImage = UIGraphicsGetImageFromCurrentImageContext()

        // Release context
        UIGraphicsEndImageContext()

        // return image
        return newImage ?? self
        #elseif os(macOS)
        // New image
        let newImage = SUImage(size: newSize)

        // Focus
        newImage.lockFocus()

        // Set size
        size = newSize

        // Resizing
        draw(at: .zero, from: NSRect(x: 0, y: 0, width: newSize.width, height: newSize.height), operation: .copy, fraction: 1.0)

        // Unfocus
        newImage.unlockFocus()

        // Return image
        return newImage
        #endif
    }

    /// An class method for resizing image
    ///
    /// - Parameters:
    ///   - image: An object of image
    ///   - newSize: Will resizing size
    /// - Returns: Return an new image if succeed, otherwise origin image
    public class func resize(_ image: SUImage, to newSize: CGSize) -> SUImage {
        return image.resizeTo(newSize)
    }

}
