//
//  AccountSettingsViewController.swift
//  EcoFlow
//
//  Created by 1 on 21.02.2023.
//

import UIKit

class AccountSettingsViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [TableViewCellController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AccountViewCellController.configure(tableView: tableView)
    }
}

extension AccountSettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 5
    }
}

extension AccountSettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return data[indexPath.row].tableView(tableView, cellForRowAt: indexPath)
    }
}



