//
//  SettingsViewController.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit


class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [TableViewCellController]() {
        didSet {
            tableView?.reloadData()
        }
    }
    
    
    var onTapCell: ((Int) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView()
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
        onTapCell?(indexPath.row)
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
