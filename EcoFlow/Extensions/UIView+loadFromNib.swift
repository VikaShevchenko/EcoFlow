//
//  V.swift
//  EcoFlow
//
//  Created by 1 on 18.02.2023.
//

import UIKit

protocol UIViewLoading {}
extension UIView : UIViewLoading {}

extension UIViewLoading where Self : UIView {

  static func loadFromNib() -> Self {
    let nibName = "\(self)".split{$0 == "."}.map(String.init).last!
    let nib = UINib(nibName: nibName, bundle: nil)
    return nib.instantiate(withOwner: self, options: nil).first as! Self
  }
}
