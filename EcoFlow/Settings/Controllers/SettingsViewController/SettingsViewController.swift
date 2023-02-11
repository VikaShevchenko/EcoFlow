//
//  SettingsViewController.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var data = [TableViewCellController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView()
        data.append(UserTableViewCellController(model: User(name: "Maxim", email: "w12@gmail.com", imageName: "TestImage", id: "12121212") ))
        data.append(SettingsViewCellController(model: Settings(name: "EcoCredits",
                                                               imageName: "dollarsign.circle.fill",
                                                               additionalInfo: "500")))
        data.append(SettingsViewCellController(model: Settings(name: "Device Sharing",
                                                               imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model: Settings(name: "Warranty  Registraion",
                                                               imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model: Settings(name: "Language",
                                                               imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model:  Settings(name: "Network Diagnosis",
                                                                imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model: Settings(name: "Contact customer support",
                                                               imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model:  Settings(name: "Help center",
                                                                imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model: Settings(name: "Check updates",
                                                               imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model:  Settings(name: "Rate us",
                                                                imageName: "dollarsign.circle.fill")))
        data.append(SettingsViewCellController(model: Settings(name: "About",
                                                               imageName: "dollarsign.circle.fill")))
    }
    
    func configureTableView() {
        UserTableViewCellController.configure(tableView: tableView)
        SettingsViewCellController.configure(tableView: tableView)
    }
}


extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }
        
        return 50
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            print("Hello vika")
        case 1:
            print("Hello maxim")
        case 2:
            print("Hello marik")
        case 4:
            print("Language")
            let vc = LanguageViewController()
            navigationController?.pushViewController(vc, animated: true)

        default:
            print("another cell")
            
        }
        
        
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return data[indexPath.row].tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
        
    }
    
}
