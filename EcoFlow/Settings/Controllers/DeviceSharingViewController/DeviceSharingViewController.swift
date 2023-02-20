//
//  DeviceSharingViewController.swift
//  EcoFlow
//
//  Created by 1 on 15.02.2023.
//

import UIKit

class DeviceSharingViewController: UIViewController {
    
    @IBOutlet weak var acceptingDeviceView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Device Sharing"
        acceptingDeviceView.layer.cornerRadius = 20
        
        let gestureRecognizer = UITapGestureRecognizer(target: self,
                                                       action: #selector(tapOnAcceptiongDeviceView(_:)))
        acceptingDeviceView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func tapOnAcceptiongDeviceView(_ sender: UIPanGestureRecognizer) {
        // TODO: - Move to next screen
        let vc =  DeviceSharingDetailsViewController()
        navigationController?.pushViewController(vc, animated: false)
    }
}

