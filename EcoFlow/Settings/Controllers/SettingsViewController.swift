//
//  SettingsViewController.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let userModel = User(name: "Maxim", email: "w12@gmail.com", imageName: "TestImage", id: "12121212")
    
    let model = [
        Settings(name: "EcoCredits", imageName: "dollarsign.circle.fill",additionalInfo: "500"),
        Settings(name: "Device Sharing", imageName: "dollarsign.circle.fill"),
        Settings(name: "Warranty  Registraion", imageName: "dollarsign.circle.fill"),
        Settings(name: "Language", imageName: "dollarsign.circle.fill"),
        Settings(name: "Network Diagnosis", imageName: "dollarsign.circle.fill"),
        Settings(name: "Contact customer support", imageName: "dollarsign.circle.fill"),
        Settings(name: "Help center", imageName: "dollarsign.circle.fill"),
        Settings(name: "Check updates", imageName: "dollarsign.circle.fill"),
        Settings(name: "Rate us", imageName: "dollarsign.circle.fill"),
        Settings(name: "About", imageName: "dollarsign.circle.fill"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView() 
    }
    
    func configureTableView() {
        tableView.register(SettingsTableViewCell.self)
        tableView.register(UserTableViewCell.self)
    }
}


extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }
        
        return 50
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.reuseIdentifier, for: indexPath) as! UserTableViewCell
            cell.userImageView.image = UIImage(named: userModel.imageName)
            cell.userNameLabel.text = userModel.name
            cell.userEmailLabel.text = userModel.email
        return cell
        }
        
        

        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell

        let currentModel = model[indexPath.row - 1]
        cell.titleTextLabel.text = currentModel.name

        cell.iconImageView.image = UIImage(systemName: currentModel.imageName)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count + 1
        
    }
    
}
