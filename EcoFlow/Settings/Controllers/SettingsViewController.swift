//
//  SettingsViewController.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView()
    }
    
    func configureTableView() {
        let cell = UINib(nibName: "SettingsTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "SettingsTableViewCell")
    }
}


extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    
}
// SOLID - I INTERFace segregation -

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        
        let currentModel = Settings(name: "EcoCredits", imageName: "dollarsign.circle.fill",additionalInfo: "500")
        
        cell.titleTextLabel.text = currentModel.name
        
        cell.iconImageView.image = UIImage(systemName: currentModel.imageName)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
        
    }
    
}
