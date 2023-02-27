//
//  SettingsCoodrinator.swift
//  EcoFlow
//
//  Created by 1 on 26.02.2023.
//

import UIKit


class SettingsCoodrinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func openDetailScreen(number: Int) {
        switch number {
        case 0:
            pushViewController(AccountSettingsViewController())
        default:
            print("HELLO COORDINATOR")
        }
    }
    
    func pushViewController(_ vc: UIViewController) {
        navigationController.pushViewController(vc, animated: true)
    }

    
}
