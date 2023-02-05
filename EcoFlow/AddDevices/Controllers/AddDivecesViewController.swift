//
//  AddDivecesViewController.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit

class AddDivecesViewController: UIViewController {
    
    @IBOutlet weak var addDeviceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureLabels()
    }
    
    func configureLabels() {
        addDeviceLabel.text = "Add device"
        descriptionLabel.text = "No bluetooth device is found.\nPlease add devices manually from the devices list below"
        refreshButton.setTitle("Refresh", for: .normal)
    }
}
