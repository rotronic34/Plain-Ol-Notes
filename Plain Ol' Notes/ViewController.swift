//
//  ViewController.swift
//  Plain Ol' Notes
//
//  Created by Apple on 9/26/19.
//  Copyright © 2019 Roeut Chak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    //MARK: @IBOutlets
    @IBOutlet weak var table: UITableView!
    var data = ["Item 1", "Item 2", "Item 3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        cell.textLabel?.text = data[indexPath.row]
        return cell 
        
    }

}

