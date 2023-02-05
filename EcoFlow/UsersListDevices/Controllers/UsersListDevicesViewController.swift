//
//  UsersListDevicesViewController.swift
//  EcoFlow
//
// Created by Viktoria on 01.02.2023.
//

import UIKit

class UsersListDevicesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let model = [
        EcoFlowDevice(name: "EcoFlow Delta mini",
                      serialNumber: "PDSKLDSKDSKJSLDSDLSKJ23",
                      imageName: "ecoflow_deltaMini",
                      statusConnect: "no"),
        
        EcoFlowDevice(name: "EcoFlow Pro River",
                      serialNumber: "sdskdjhkjhkjshdsd",
                      imageName: "ecoFlowProRiver2",
                      statusConnect: "no"),
        
        EcoFlowDevice(name: "EcoFlow Pro Vika ",
                      serialNumber: "sdskdjhkjhkjshdsd",
                      imageName: "ecoFlowProRiver2",
                      statusConnect: "no"),
        
        EcoFlowDevice(name: "EcoFlow Pro Vika ",
                      serialNumber: "sdskdjhkjhkjshdsd",
                      imageName: "ecoFlowProRiver2",
                      statusConnect: "no"),

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureNavigationItem()
        view.backgroundColor = .black
        title = "Ecoflow"
    }
}

extension UsersListDevicesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    
}

extension UsersListDevicesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EcoFlowDeviceTableViewCell", for: indexPath) as! EcoFlowDeviceTableViewCell
        
        let currentModel = model[indexPath.row]
        
        cell.modelNameLabel.text = currentModel.name
        cell.modelSerialNumberLabel.text = currentModel.serialNumber
        
        cell.modelImageView.image = UIImage(named: currentModel.imageName)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
}


extension UsersListDevicesViewController {
    func configureTableView() {
        let cell = UINib(nibName: "EcoFlowDeviceTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "EcoFlowDeviceTableViewCell")
    }
    
    
    func configureNavigationItem() {
        let plusImage =  UIImage(systemName: "plus")
        
        
        // Configure(setup) LeftBarButtonItem
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle.fill"), style:
                .done, target: self, action: #selector(tappSettingsButton(_:)))
        self.navigationItem.leftBarButtonItem?.tintColor = .white
        
        // Configure(setup) RightBarButtonItem
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: plusImage, style:
                .plain, target: self, action: #selector(tappAddButton(_:)))
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
    }
    
    
    
    
    @objc func tappAddButton(_ sender: UIBarButtonItem) {
        print("TAPP ADD")
        let vc = AddDivecesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tappSettingsButton(_ sender: UIBarButtonItem) {
        print("TAPP ADD")
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
