//
//  EcoFlowDetailsViewController.swift
//  EcoFlow
//
//  Created by 1 on 12.02.2023.
//

import UIKit

class EcoFlowDetailsViewController: UIViewController {
    
    @IBOutlet weak var topStackView: UIStackView!
    
    var ecoflowInputView: EcoFlowInputView! = nil
    var ecoflowOutputView: EcoFlowOutputView! = nil
    var ecoFlowInputOutputSegmentView: EcoFlowInputOutputSegmentView!
    
    var isOutputView = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: #selector(showSettings))
    }
    
    @objc func showSettings() {
        let vc = EcoFlowDeviceSettingsDetailsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ecoFlowInputOutputSegmentView = EcoFlowInputOutputSegmentView.loadFromNib()
//        ecoFlowInputOutputSegmentView.frame = topStackView.bounds
        
   
        
        topStackView.addSubview(ecoFlowInputOutputSegmentView)

        
        ecoFlowInputOutputSegmentView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ecoFlowInputOutputSegmentView.leftAnchor.constraint(equalTo: topStackView.leftAnchor),
            ecoFlowInputOutputSegmentView.rightAnchor.constraint(equalTo: topStackView.rightAnchor),
            ecoFlowInputOutputSegmentView.topAnchor.constraint(equalTo: topStackView.topAnchor),
            ecoFlowInputOutputSegmentView.bottomAnchor.constraint(equalTo: topStackView.bottomAnchor),
        ])
        
//
        topStackView.layer.borderColor = UIColor.red.cgColor
        topStackView.layer.borderWidth = 1
        
//        let gestureRecognizer = UITapGestureRecognizer(target: self,
//                                                       action: #selector(tapOnGestureRecognizer))
//        ecoFlowInputOutputSegmentView.addGestureRecognizer(gestureRecognizer)
//
//        ecoFlowInputOutputSegmentView.layer.cornerRadius = 10
    }
    
    @objc func tapOnGestureRecognizer() {
        let prioritetValue: Float = isOutputView ? 998 : 1000
        
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: .curveEaseOut) {
            self.ecoFlowInputOutputSegmentView.animateBackgroundViewLeadingConstrant.priority = UILayoutPriority(rawValue: prioritetValue)
            self.ecoFlowInputOutputSegmentView.layoutIfNeeded()
        }

        isOutputView.toggle()
        
        // TODO: - show view
//        ecoflowInputView.isHidden = isOutputView ? true : false
//        ecoflowInputView.isHidden = isOutputView ? false : true
        
        view.backgroundColor = isOutputView ? #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1):  #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)

        
    }
    
    
}
