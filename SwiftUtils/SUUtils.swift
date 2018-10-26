//
//  SUUtils.swift
//  SwiftUtils
//
//  Created by admin on 2018/10/26.
//  Copyright © 2018 Develop. All rights reserved.
//

import Foundation
#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

public class SUUtils {

    public class func generateQRCode(_ value: String, dstSize: CGSize?, withCenteredImage cImage: SUImage? = nil, graphicColor sColor: SUColor? = nil) -> SUImage? {

        // Get data
        let qrContent = value.data(using: .utf8)!

        // Get size
        let qrImageSize = dstSize ?? CGSize(width: 120, height: 120)

        // Create filter
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(qrContent, forKey: "inputMessage")
        filter?.setValue("H", forKey: "inputCorrectionLevel")

        // Get output image
        if let ciImage = filter?.outputImage {

            // Scaled
            let deltaX = qrImageSize.width / ciImage.extent.width
            let deltaY = qrImageSize.height / ciImage.extent.height

            // Resolve blur
            var outputImage = ciImage.transformed(by: CGAffineTransform.identity.scaledBy(x: deltaX, y: deltaY))

            // Graphics with color
            if let sColor = sColor {
                let strokeColor = CIColor(color: sColor)
                let backgroundColor = CIColor(color: SUColor.white)
                let sFilter = CIFilter(name: "CIFalseColor")
                #if os(macOS)
                sFilter?.setDefaults()
                #endif
                sFilter?.setValue(outputImage, forKey: "inputImage")
                sFilter?.setValue(strokeColor, forKey: "inputColor0")
                sFilter?.setValue(backgroundColor, forKey: "inputColor1")
                outputImage = sFilter?.outputImage ?? outputImage
            }

            // Has icon image?
            if let cImage = cImage {

                // Resize image && transform
                let cx = outputImage.extent.width * 0.4
                let cy = outputImage.extent.height * 0.4
                let cw = outputImage.extent.width * 0.2
                let ch = outputImage.extent.height * 0.2
                let iconImage = cImage.resizeTo(CGSize(width: cw, height: ch))
                #if os(macOS)
                var ciImage = CIImage(cgImage: iconImage.cgImage(forProposedRect: nil, context: nil, hints: nil)!)
                ciImage = ciImage.transformed(by: CGAffineTransform.identity.translatedBy(x: cx, y: cy))
                #elseif os(iOS)
                let ciImage = CIImage(image: iconImage)?.transformed(by: CGAffineTransform.identity.translatedBy(x: cx, y: cy))
                #endif

                let cFilter = CIFilter(name: "CISourceOverCompositing")
                #if os(macOS)
                cFilter?.setDefaults()
                #endif
                cFilter?.setValue(ciImage, forKey: "inputImage")
                cFilter?.setValue(outputImage, forKey: kCIInputBackgroundImageKey)
                outputImage = cFilter?.outputImage ?? outputImage
            }

            // Get cg image
            if let cgImage = CIContext().createCGImage(outputImage, from: outputImage.extent) {

                #if os(macOS)
                let newImage = SUImage(cgImage: cgImage, size: qrImageSize)
                #elseif os(iOS)
                let newImage = SUImage(cgImage: cgImage)
                #endif
                return newImage
            }
        }
        return nil
    }
}
