//
//  EcoFlowInputOutputSegmentView.swift
//  EcoFlow
//
//  Created by 1 on 18.02.2023.
//

import UIKit

class EcoFlowInputOutputSegmentView: UIView {

    @IBOutlet weak var animateBackgroundView: UIView!
    @IBOutlet weak var animateBackgroundViewLeadingConstrant: NSLayoutConstraint!
    
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        animateBackgroundView.layer.cornerRadius = 10
        
        self.layer.borderColor  = UIColor.white.cgColor
        self.layer.borderWidth = 1
    }

    
}
