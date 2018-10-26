//
//  SUColorUtils.swift
//  SwiftUtils
//
//  Created by admin on 2018/10/25.
//  Copyright © 2018 Develop. All rights reserved.
//

#if os(macOS)
import AppKit
public typealias SUColor = NSColor
#elseif os(iOS)
import UIKit
import CoreFoundation
public typealias SUColor = UIColor
#endif

public extension SUColor {
    /// AliceBlue
    public class var aliceBlue: SUColor { get { return SUColor.rgb(240, 248, 255) } }
    /// AntiqueWhite
    public class var antiqueWhite: SUColor { get { return SUColor.rgb(250, 235, 215)} }
    /// Aqua
    public class var aqua: SUColor { get { return SUColor.rgb(0, 255, 255)} }
    /// AquaMarine
    public class var aquaMarine: SUColor { get { return SUColor.rgb(127, 255, 212)} }
    /// Beige
    public class var beige: SUColor { get { return SUColor.rgb(245, 245, 220)}}
    /// Bisque
    public class var bisque: SUColor { get { return SUColor.rgb(255, 228, 196)}}
    /// BlanchedAlmond
    public class var blanchedAlmond: SUColor { get { return SUColor.rgb(255, 235, 205)}}
    /// BlueViolet
    public class var blueViolet: SUColor { get { return SUColor.rgb(138, 43, 226)}}
    /// Burlywood
    public class var burlywood: SUColor { get { return SUColor.rgb(222, 184, 135)}}
    /// CadetBlue
    public class var cadetBlue: SUColor { get { return SUColor.rgb(95, 158, 160)}}
    /// ChartReuse
    public class var chartReuse: SUColor { get { return SUColor.rgb(127, 255, 0)}}
    /// Chocolate
    public class var chocolate: SUColor { get { return SUColor.rgb(201, 105, 30)}}
    /// Coral
    public class var coral: SUColor { get { return SUColor.rgb(255, 127, 80)}}
    /// CornFlowerBlue
    public class var cornFlowerBlue: SUColor { get { return SUColor.rgb(100, 149, 237)}}
    /// CornSilk
    public class var cornSilk: SUColor { get { return SUColor.rgb(255, 248, 220)}}
    /// Crimson
    public class var crimson: SUColor { get { return SUColor.rgb(220, 20, 60)}}
    /// DarkBlue
    public class var darkBlue: SUColor { get { return SUColor.rgb(0, 0, 139)}}
    /// DarkCyan
    public class var darkCyan: SUColor { get { return SUColor.rgb(0, 139, 139)}}
    /// DarkGoldenRod
    public class var darkGoldenRod: SUColor { get { return SUColor.rgb(184, 134, 11)}}
    /// DarkGreen
    public class var darkGreen: SUColor { get { return SUColor.rgb(0, 100, 0)}}
    /// DarkGren
    public class var darkGrey: SUColor { get { return SUColor.rgb(169, 169, 169)}}
    /// DarkKhaki
    public class var darkKhaki: SUColor { get { return SUColor.rgb(189, 183, 107)}}
    /// DarkMagenta
    public class var darkMagenta: SUColor { get { return SUColor.rgb(139, 0, 139)}}
    /// DarkOliveGreen
    public class var darkOliveGreen: SUColor { get { return SUColor.rgb(85, 107, 47)}}
    /// DarkOrange
    public class var darkOrange: SUColor { get { return SUColor.rgb(255, 140, 0)}}
    /// DarkOrchid
    public class var darkOrchid: SUColor { get { return SUColor.rgb(153, 50, 204)}}
    /// DarkRed
    public class var darkRed: SUColor { get { return SUColor.rgb(139, 0, 0)}}
    /// DarkSalmon
    public class var darkSalmon: SUColor { get { return SUColor.rgb(233, 150, 122)}}
    /// DarkSlateBlue
    public class var darkSlateBlue: SUColor { get { return SUColor.rgb(72, 61, 139)}}
    /// DarkSlateGray
    public class var darkSlateGray: SUColor { get { return SUColor.rgb(47, 79, 79)}}
    /// DarkTurquoise
    public class var darkTurquoise: SUColor { get { return SUColor.rgb(0, 206, 209)}}
    /// DarkViolet
    public class var darkViolet: SUColor { get { return SUColor.rgb(148, 0, 211)}}
    /// DeepPink
    public class var deepPink: SUColor { get { return SUColor.rgb(255, 20, 147)}}
    /// DeepSkyBlue
    public class var deepSkyBlue: SUColor { get { return SUColor.rgb(0, 191, 255)}}
    /// DimGray
    public class var dimGray: SUColor { get { return SUColor.rgb(105, 105, 105)}}
    /// DodgerBlue
    public class var godgerBlue: SUColor { get { return SUColor.rgb(30, 144, 255)}}
    /// FireBrick
    public class var fierBrick: SUColor { get { return SUColor.rgb(178, 34, 34)}}
    /// FloralWhite
    public class var floralWhite: SUColor { get { return SUColor.rgb(255, 250, 240)}}
    /// ForestGreen
    public class var forestGreen: SUColor { get { return SUColor.rgb(34, 139, 34)}}
    /// Fuchsia
    public class var fuchsia: SUColor { get { return SUColor.rgb(255, 0, 255)}}
    /// Gainsboro
    public class var gainsboro: SUColor { get { return SUColor.rgb(220, 220, 220)}}
    /// Gold
    public class var gold: SUColor { get { return SUColor.rgb(255, 215, 0)}}
    /// GoldenRod
    public class var goldenRod: SUColor { get { return SUColor.rgb(218, 165, 32)}}
    /// GreenYellow
    public class var greenYellow: SUColor { get { return SUColor.rgb(173, 255, 47)}}
    /// HalfClear
    public class var halfClear: SUColor { get { return SUColor.rgba(0, 0, 0, 0.5)}}
    /// Honeydew
    public class var honeydew: SUColor { get { return SUColor.rgb(240, 255, 240)}}
    /// HotPink
    public class var hotPink: SUColor { get { return SUColor.rgb(255, 105, 180)}}
    /// IndianRed
    public class var indianRed: SUColor { get { return SUColor.rgb(205, 92, 92)}}
    /// Indigo
    public class var indigo: SUColor { get { return SUColor.rgb(75, 0, 130)}}
    /// Ivory
    public class var ivory: SUColor { get { return SUColor.rgb(255, 255, 240)}}
    /// Khaki
    public class var khkai: SUColor { get { return SUColor.rgb(240, 230, 140)}}
    /// Lavender
    public class var lavender: SUColor { get { return SUColor.rgb(230, 230, 250)}}
    /// LavenderBlush
    public class var lavenderBlush: SUColor { get { return SUColor.rgb(255, 240, 245)}}
    /// LawnGreen
    public class var lawnGreen: SUColor { get { return SUColor.rgb(124, 252, 0)}}
    /// LemonChiffon
    public class var lemonChiffon: SUColor { get { return SUColor.rgb(255, 250, 205)}}
    /// LightBlue
    public class var lightBlue: SUColor { get { return SUColor.rgb(173, 216, 230)}}
    /// LightCoral
    public class var lightCoral: SUColor { get { return SUColor.rgb(240, 128, 128)}}
    /// LightCyan
    public class var lightCyan: SUColor { get { return SUColor.rgb(224, 255, 255)}}
    /// LightGoldenRodYellow
    public class var lightGoldenRodYellow: SUColor { get { return SUColor.rgb(250, 250, 210)}}
    /// LightGreen
    public class var lightGreen: SUColor { get { return SUColor.rgb(144, 238, 144)}}
    /// LightPink
    public class var lightPink: SUColor { get { return SUColor.rgb(255, 182, 193)}}
    /// LightSalmon
    public class var lightSalmon: SUColor { get { return SUColor.rgb(255, 160, 122)}}
    /// LightSeaGreen
    public class var lightSeaGreen: SUColor { get { return SUColor.rgb(32, 178, 170)}}
    /// LightSkyBlue
    public class var lightSkyBlue: SUColor { get { return SUColor.rgb(135, 206, 250)}}
    /// LightSlateGray
    public class var lightSlateGray: SUColor { get { return SUColor.rgb(119, 136, 153)}}
    /// LightSteelBlue
    public class var lightSteelBlue: SUColor { get { return SUColor.rgb(176, 196, 222)}}
    /// LightYellow
    public class var lightYellow: SUColor { get { return SUColor.rgb(255, 255, 224)}}
    /// Lime
    public class var lime: SUColor { get { return SUColor.rgb(0, 255, 0)}}
    /// LimeGreen
    public class var limeGreen: SUColor { get { return SUColor.rgb(50, 205, 50)}}
    /// Linen
    public class var linen: SUColor { get { return SUColor.rgb(250, 240, 230)}}
    /// Maroon
    public class var maroon: SUColor { get { return SUColor.rgb(128, 0, 0)}}
    /// MediumAquamarine
    public class var mediumAuamarine: SUColor { get { return SUColor.rgb(102, 205, 170)}}
    /// MediumBlue
    public class var mediumBlue: SUColor { get { return SUColor.rgb(0, 0, 205)}}
    /// MediumOrchid
    public class var mediumOrchid: SUColor { get { return SUColor.rgb(186, 85, 211)}}
    /// MediumSeaGreen
    public class var mediumSeaGreen: SUColor { get { return SUColor.rgb(60, 179, 113)}}
    /// MediumSlateBlue
    public class var mediumSlateBlue: SUColor { get { return SUColor.rgb(123, 104, 238)}}
    /// MediumSpringGreen
    public class var mediumSpringGreen: SUColor { get { return SUColor.rgb(0, 250, 154)}}
    /// MediumTorquoise
    public class var mediumTorquoise: SUColor { get { return SUColor.rgb(72, 209, 204)}}
    /// MediumVioletRed
    public class var mediumVioletRed: SUColor { get { return SUColor.rgb(199, 21, 133)}}
    /// MidNightBlue
    public class var midNightBlue: SUColor { get { return SUColor.rgb(25, 25, 112)}}
    /// MistyRose
    public class var mistyRose: SUColor { get { return SUColor.rgb(255, 228, 225)}}
    /// Moccasin
    public class var moccasin: SUColor { get { return SUColor.rgb(255, 228, 181)}}
    /// NavajoWhite
    public class var navajoWhite: SUColor { get { return SUColor.rgb(255, 222, 173)}}
    /// Navy
    public class var navy: SUColor { get { return SUColor.rgb(0, 0, 128)}}
    /// OldLace
    public class var oldLace: SUColor { get { return SUColor.rgb(253, 245, 230)}}
    /// Olive
    public class var olive: SUColor { get { return SUColor.rgb(128, 128, 0)}}
    /// OliveDrab
    public class var oliveDrab: SUColor { get { return SUColor.rgb(107, 142, 35)}}
    /// OrangeRed
    public class var orangeRed: SUColor { get { return SUColor.rgb(255, 69, 0)}}
    /// Orchid
    public class var orchid: SUColor { get { return SUColor.rgb(218, 112, 214)}}
    /// PaleGoldenRod
    public class var paleGoldenRod: SUColor { get { return SUColor.rgb(238, 232, 170)}}
    /// PaleGreen
    public class var pageGreen: SUColor { get { return SUColor.rgb(152, 251, 152)}}
    /// PaleTurquoise
    public class var paleTurquoise: SUColor { get { return SUColor.rgb(175, 238, 238)}}
    /// PaleVioletRed
    public class var paleVioletRed: SUColor { get { return SUColor.rgb(219, 112, 147)}}
    /// Papayawhip
    public class var papayawhip: SUColor { get { return SUColor.rgb(255, 239, 213)}}
    /// PeachPuff
    public class var peachPuff: SUColor { get { return SUColor.rgb(255, 218, 185)}}
    /// Peru
    public class var peru: SUColor { get { return SUColor.rgb(205, 133, 63)}}
    /// Plum
    public class var plum: SUColor { get { return SUColor.rgb(221, 160, 221)}}
    /// PowderBlue
    public class var powderBlue: SUColor { get { return SUColor.rgb(176, 224, 230)}}
    /// RosyBrown
    public class var rosyBrown: SUColor { get { return SUColor.rgb(188, 143, 143)}}
    /// RoyalBlue
    public class var royalBlue: SUColor { get { return SUColor.rgb(65, 105, 225)}}
    /// SaddleBrown
    public class var saddleBrown: SUColor { get { return SUColor.rgb(139, 69, 19)}}
    /// Salmon
    public class var salmon: SUColor { get { return SUColor.rgb(250, 128, 114)}}
    /// SandyBrown
    public class var sandyBrown: SUColor { get { return SUColor.rgb(244, 164, 96)}}
    /// SeaGreen
    public class var seaGreen: SUColor { get { return SUColor.rgb(46, 139, 87)}}
    /// SeaShell
    public class var seaShell: SUColor { get { return SUColor.rgb(255, 245, 238)}}
    /// Sienna
    public class var sienna: SUColor { get { return SUColor.rgb(160, 82, 45)}}
    /// Silver
    public class var silver: SUColor { get { return SUColor.rgb(192, 192, 192)}}
    /// SkyBlue
    public class var skyBlue: SUColor { get { return SUColor.rgb(135, 206, 235)}}
    /// SlateBlue
    public class var slateBlue: SUColor { get { return SUColor.rgb(106, 90, 205)}}
    /// SlateGray
    public class var slateGray: SUColor { get { return SUColor.rgb(112, 128, 144)}}
    /// Snow
    public class var snow: SUColor { get { return SUColor.rgb(255, 250, 250)}}
    /// SpringGreen
    public class var springGreen: SUColor { get { return SUColor.rgb(0, 255, 127)}}
    /// SteelBlue
    public class var steelBlue: SUColor { get { return SUColor.rgb(70, 130, 180)}}
    /// Tan
    public class var tan: SUColor { get { return SUColor.rgb(210, 180, 140)}}
    /// Teal
    public class var teal: SUColor { get { return SUColor.rgb(0, 128, 128)}}
    /// Thistle
    public class var thistle: SUColor { get { return SUColor.rgb(216, 191, 216)}}
    /// Tomato
    public class var tomato: SUColor { get { return SUColor.rgb(255, 99, 71)}}
    /// Turquoise
    public class var turquoise: SUColor { get { return SUColor.rgb(64, 224, 208)}}
    /// Violet
    public class var violet: SUColor { get { return SUColor.rgb(238, 130, 238)}}
    /// Wheat
    public class var wheat: SUColor { get { return SUColor.rgb(245, 222, 179)}}
    /// YellowGreen
    public class var yellowGreen: SUColor { get { return SUColor.rgb(154, 205, 50)}}


    /// Instanced color with R/G/B. default A = 1
    ///
    /// - Parameter rgb: Red/Blue/Green, the value of R/G/B can be between 0 with 255, also 0~1
    /// - Returns: Instacne of color
    public class func rgb(_ rgb: CGFloat...) -> SUColor {
        assert(rgb.count == 3, "Usage: it must contain 3 values \t\n SUColor.rgb(255, 255, 255)")
        let colors = rgb.map({ $0 > 1 ? ($0 / 255.0) : $0})
        return SUColor(red: colors[0], green: colors[1], blue: colors[2], alpha: 1)
    }

    /// Instanced color with R/G/B/A.
    ///
    /// - Parameter rgba: Red/Blue/Green/Alpha, the value of R/G/B/A can be between 0 with 255, also 0~1
    /// - Returns: Instacne of color
    public class func rgba(_ rgba: CGFloat...) -> SUColor {
        assert(rgba.count == 4, "Usage: it must contain 4 values \t\n SUColor.rgba(255, 255, 255, 1.0)")
        let colors = rgba.map({ $0 > 1 ? ($0 / 255.0) : $0})
        return SUColor(red: colors[0], green: colors[1], blue: colors[2], alpha: colors[3])
    }


    /// Using hex string to init color
    ///
    /// - Parameter hex: The hex string.
    ///                   Formats:  [0x | OX][ff00ff00 | ff00ff | f0f0 | fff]
    ///                                      [RRGGBBAA | RRGGBB | RGBA | RGB]
    public convenience init(hex: String) {

        /// Reject strings
        let hexString = hex.replacingOccurrences(of: "0x", with: "")
        let valuesStr = hexString.replacingOccurrences(of: "0X", with: "")

        /// Process values
        var colors = [0, 0, 0, 1]
        switch valuesStr.count {
        case 8, 6:
            colors[0] = Int(valuesStr[0...1], radix: 16) ?? 0
            colors[1] = Int(valuesStr[2...3], radix: 16) ?? 0
            colors[2] = Int(valuesStr[4...5], radix: 16) ?? 0
            if valuesStr.count == 8 {
                colors[3] = Int(valuesStr[6...7], radix: 16) ?? 0
            }
        case 4, 3:
            colors[0] = Int(valuesStr[0...0], radix: 16) ?? 0
            colors[1] = Int(valuesStr[1...1], radix: 16) ?? 0
            colors[2] = Int(valuesStr[2...2], radix: 16) ?? 0
            if valuesStr.count == 4 {
                colors[3] = Int(valuesStr[3...3], radix: 16) ?? 0
            }
        default:
            break
        }
        let newColors = colors.map({ $0 > 1 ? CGFloat($0) / 255.0 : CGFloat($0) })
        self.init(red: newColors[0], green: newColors[1], blue: newColors[2], alpha: newColors[3])
    }
}
