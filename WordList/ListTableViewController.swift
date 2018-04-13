//
//  ListTableViewController.swift
//  WordList
//
//  Created by 阿部一真 on 2018/04/13.
//  Copyright © 2018年 阿部一真. All rights reserved.
//

import UIKit

class ListTableViewController: UITableController {
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveDate = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

    tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveDate.array(forKey: "WORD") != nil {
            wordArray = saveDate.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
        tableView.reloadDate()
    }

}
