//
//  ViewController.swift
//  SwiftUtilsExampleMacOS
//
//  Created by admin on 2018/10/26.
//  Copyright © 2018 Develop. All rights reserved.
//

import Cocoa
import SwiftUtils

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.layer?.backgroundColor = NSColor.init(hex: "0xFF0000").cgColor // red
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

