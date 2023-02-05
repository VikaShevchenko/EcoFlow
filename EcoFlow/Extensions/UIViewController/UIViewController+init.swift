//
//  UIViewController+init.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit


// init()
// convenience init()
// required init()


extension UIViewController {
    
    convenience init(bundle: Bundle ) {
        self.init(nibName: "\(Self.self)", bundle: nil)
    }
    
}
