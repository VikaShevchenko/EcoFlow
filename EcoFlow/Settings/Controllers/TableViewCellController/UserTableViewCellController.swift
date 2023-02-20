//
//  UserTableViewCellController.swift
//  EcoFlow
//
//  Created by 1 on 11.02.2023.
//

import UIKit


class UserTableViewCellController: TableViewCellController {
    
    private let model: User
    
    init(model: User) {
        self.model = model
    }
    
    static func configure(tableView: UITableView) {
        tableView.register(UserTableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.reuseIdentifier, for: indexPath) as! UserTableViewCell
        cell.userImageView.image = UIImage(named: model.imageName)
        cell.userNameLabel.text = model.name
        cell.userEmailLabel.text = model.email
        return cell
    }
}
