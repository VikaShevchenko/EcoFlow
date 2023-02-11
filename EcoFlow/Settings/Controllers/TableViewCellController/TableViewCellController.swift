//
//  TableViewCellController.swift
//  EcoFlow
//
//  Created by 1 on 05.02.2023.
//

import UIKit

protocol TableViewCellController {
    func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
}

extension TableViewCellController {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}








