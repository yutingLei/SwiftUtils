//
//  SULoader.swift
//  SwiftUtils
//
//  Created by admin on 2018/10/30.
//  Copyright © 2018 Develop. All rights reserved.
//

import Foundation

#if os(iOS)
import UIKit
public class SULoading: UIView {

    /// Loading Types
    public enum LoadingType {
        case system
        case classic
        case circleSnail
    }

    /// Default type
    private var contentView: UIView!
    private var type = LoadingType.system {
        didSet {
            /// Loading components
            createLoadingComponents()
        }
    }

    /// Init
    public override init(frame: CGRect) {
        super.init(frame: frame)

        /// Clear color
        backgroundColor = .clear
        tag = 9876

        /// Content view
        contentView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 70, height: 70)))
        contentView.backgroundColor = UIColor.rgba(0, 0, 0, 0.75)
        contentView.layer.cornerRadius = 8
        contentView.clipsToBounds = true
        contentView.center = center
        addSubview(contentView)
    }

    private func createLoadingComponents() {
        /// Loader components
        switch type {
        case .system:
            let indicator = UIActivityIndicatorView(frame: contentView.bounds)
            indicator.style = .whiteLarge
            indicator.startAnimating()
            contentView.addSubview(indicator)
        case .classic:
            let path1 = UIBezierPath(arcCenter: CGPoint(x: 35, y: 35),
                                     radius: 18,
                                     startAngle: 0,
                                     endAngle: 1.5 * CGFloat.pi,
                                     clockwise: true)
            let path2 = UIBezierPath(arcCenter: CGPoint(x: 40, y: 40),
                                     radius: 12,
                                     startAngle: 0,
                                     endAngle: -1.5 * CGFloat.pi,
                                     clockwise: false)


            let paths = [path1, path2]
            for i in 0...1 {
                let strokeLayer = CAShapeLayer()
                strokeLayer.frame = contentView.bounds
                strokeLayer.path = paths[i].cgPath
                strokeLayer.fillColor = UIColor.clear.cgColor
                strokeLayer.strokeColor = UIColor.white.cgColor
                strokeLayer.lineWidth = 3.0
                contentView.layer.addSublayer(strokeLayer)

                /// Animator with rotation
                let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
                rotation.duration = 1.5
                rotation.fromValue = i == 0 ? 0 : 2 * Double.pi
                rotation.toValue = i == 0 ? 2 * Double.pi : 0
                rotation.repeatCount = Float.infinity
                strokeLayer.add(rotation, forKey: nil)
            }
        case .circleSnail:
            let path = UIBezierPath(arcCenter: CGPoint(x: 35, y: 35),
                                    radius: 18,
                                    startAngle: 0,
                                    endAngle: 2 * CGFloat.pi,
                                    clockwise: true)
            let strokeLayer = CAShapeLayer()
            strokeLayer.frame = contentView.bounds
            strokeLayer.fillColor = UIColor.clear.cgColor
            strokeLayer.strokeColor = UIColor.white.cgColor
            strokeLayer.path = path.cgPath
            strokeLayer.lineWidth = 3.0
            contentView.layer.addSublayer(strokeLayer)

            /// Animator with rotation
            let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
            rotation.byValue = 2 * Double.pi
            #if swift(>=4.2)
            rotation.timingFunction = CAMediaTimingFunction(name: .linear)
            #else
            rotation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            #endif

            /// Animator with stroke
            let start = CABasicAnimation(keyPath: "strokeStart")
            start.timingFunction = CAMediaTimingFunction(controlPoints: 0.4, 0.0, 0.2, 1.0)
            start.duration = 1.7
            start.fromValue = 0
            start.toValue = 1
            start.beginTime = 0.5

            let end = CABasicAnimation(keyPath: "strokeEnd")
            start.timingFunction = CAMediaTimingFunction(controlPoints: 0.4, 0.0, 0.2, 1.0)
            end.duration = 1.2
            end.fromValue = 0
            end.toValue = 1

            let groups = CAAnimationGroup()
            groups.duration = 2.2
            groups.animations = [rotation, start, end]
            groups.repeatCount = Float.infinity
            groups.isRemovedOnCompletion = false
            #if swift(>=4.2)
            groups.fillMode = .forwards
            #else
            groups.fillMode = kCAFillModeForwards
            #endif
            strokeLayer.add(groups, forKey: nil)
        default:
            break
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public extension SULoading {

    /// Animation for loading
    ///
    /// - Parameter type: Loading type, default is .system
    public class func show(_ type: LoadingType = .system) {

        /// Had a keywindow?
        guard let keyWin = UIApplication.shared.keyWindow else { return }

        /// Had a loader?
        guard let _ = keyWin.viewWithTag(9876) as? SULoading else {

            /// If not
            let loader = SULoading(frame: UIScreen.main.bounds)
            loader.type = type
            loader.alpha = 0

            /// Add
            keyWin.addSubview(loader)

            /// Animator
            UIView.animate(withDuration: 0.8) {
                loader.alpha = 1.0
            }
            return
        }
        print("Already has a loader at running.")
    }

    /// Dimiss loading animation
    public class func dismiss() {
        guard let keyWin = UIApplication.shared.keyWindow else { return }
        guard let loader = keyWin.viewWithTag(9876) as? SULoading else { return }
        loader.removeFromSuperview()
    }
}
#endif
