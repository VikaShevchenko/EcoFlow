//
//  f.swift
//  EcoFlow
//
// Created by Viktoria on 01.02.2023.
//

import UIKit


extension UIViewController {
    
    func addAsChild(_ vc: UIViewController, to containerView: UIView) {
       self.addChild(vc)
       vc.view.frame = containerView.bounds
       containerView.addSubview(vc.view)
       vc.didMove(toParent: self)
   }
}
