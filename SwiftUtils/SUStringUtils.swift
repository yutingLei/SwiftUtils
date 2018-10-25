//
//  SUStringUtils.swift
//  SwiftUtils
//
//  Created by admin on 2018/10/25.
//  Copyright © 2018 Develop. All rights reserved.
//

import Foundation

public extension String {

    /// 利用 ..< 运算符获取子字符串
    ///
    /// - Parameter range: 范围
    public subscript(_ range: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end   = index(startIndex, offsetBy: range.upperBound)

        assert(start <= endIndex && end < endIndex, "Beyond string's range...")
        return self[start..<end]
    }


    /// 利用 ... 运算符，获取子字符串
    ///
    /// - Parameter range: 范围
    public subscript(_ range: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end   = index(startIndex, offsetBy: range.upperBound)

        assert(start <= endIndex && end < endIndex, "Beyond string's range...")
        return self[start...end]
    }
}
