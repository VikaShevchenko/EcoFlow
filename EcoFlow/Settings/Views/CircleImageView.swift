//
//  CircleImageView.swift
//  EcoFlow
//
//  Created by 1 on 05.02.2023.
//

import UIKit

class CircleImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
    }
    
}
