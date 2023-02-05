//
//  File.swift
//  EcoFlow
//
// Created by Viktoria on 05.02.2023.
//

import UIKit

extension UITableView {
    public func register<T: UITableViewCell>(_ cellClass: T.Type) {
        let cell = UINib(nibName: T.reuseIdentifier, bundle: nil)
        register(cell, forCellReuseIdentifier: T.reuseIdentifier)
    }
}
    
