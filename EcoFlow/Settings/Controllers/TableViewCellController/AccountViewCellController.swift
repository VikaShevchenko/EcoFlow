//
//  AccountViewCellController.swift
//  EcoFlow
//
//  Created by 1 on 21.02.2023.
//

import UIKit

class AccountViewCellController: TableViewCellController {
    private let model: AccountSettings
    
    init(model: AccountSettings) {
        self.model = model
    }
    static func configure(tableView: UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "accountCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "accountCell")
        
        
        if let imageName = model.imageName {
            let view = UIImageView(image: UIImage(named: imageName))
            view.backgroundColor = .red
            view.frame = CGRect(origin: .zero, size: CGSize(width: 20, height: 20))
            cell.accessoryView = view
        }
        

        cell.textLabel?.text = model.title
        cell.detailTextLabel?.text = model.detailText
        cell.backgroundColor = .black
        cell.accessoryType = .disclosureIndicator

        return cell
    }
}
