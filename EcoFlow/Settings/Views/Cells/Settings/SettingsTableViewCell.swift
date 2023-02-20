//
//  SettingsTableViewCell.swift
//  EcoFlow
//
// Created by Viktoria on 04.02.2023.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}




class SettingsViewCellController: TableViewCellController {
    
    private let model: Settings
    
    init(model: Settings) {
        self.model = model
    }
    
    static func configure(tableView: UITableView) {
        tableView.register(SettingsTableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.reuseIdentifier, for: indexPath) as! SettingsTableViewCell
        cell.titleTextLabel.text = model.name
        cell.iconImageView.image = UIImage(systemName: model.imageName)
        cell.selectionStyle = .none

        return cell
    }
}


