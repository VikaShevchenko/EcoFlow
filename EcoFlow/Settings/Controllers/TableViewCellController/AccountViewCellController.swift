//
//  AccountViewCellController.swift
//  EcoFlow
//
//  Created by 1 on 21.02.2023.
//

import UIKit

class AccountViewCellController: TableViewCellController {
    
    private let model: Account
    init(model: Account) {
        self.model = model
    }
    static func configure(tableView: UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "accountCell")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "accountCell")
        cell.textLabel?.text = model.name
        cell.backgroundColor = .clear
        return cell
    }
    
}
