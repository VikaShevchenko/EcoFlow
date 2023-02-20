//
//  LanguageViewController.swift
//  EcoFlow
//
//  Created by 1 on 11.02.2023.
//

import UIKit

class LanguageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [TableViewCellController]()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Languages"
        LanguageViewCellController.configure(tableView: tableView)
        
        Language.data.forEach { language in
            data.append(LanguageViewCellController(model: language))
        }
    }
}



extension LanguageViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }
        
        return 50
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension LanguageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return data[indexPath.row].tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
        
    }
    
}


