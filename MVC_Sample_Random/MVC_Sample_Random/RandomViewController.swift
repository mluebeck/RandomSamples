//
//  ViewController.swift
//  MVC_Sample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

import UIKit

class RandomViewController: UIViewController {
    
    var dataSource = RandomDataSource()
    
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self.dataSource
        self.dataSource.refreshRandomData()
    }
    
    @IBAction func reloadPressed() {
        self.dataSource.refreshRandomData()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

