//
//  LanguageViewCellController.swift
//  EcoFlow
//
//  Created by 1 on 11.02.2023.
//

import UIKit


class LanguageViewCellController: TableViewCellController {

    private let model: Language

    init(model: Language) {
        self.model = model
    }

    static func configure(tableView: UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "languageCell")
    }    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "languageCell")
        cell.textLabel?.text = model.name
        cell.backgroundColor = .clear
        return cell
    }
}
