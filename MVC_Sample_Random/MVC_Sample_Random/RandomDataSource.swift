//
//  RandomDataSource.swift
//  MVC_Sample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

import UIKit 

class RandomDataSource: NSObject, UITableViewDataSource {
    

    var random = RandomModel()
    
    func refreshRandomData() {
        self.random.refreshRandomData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.random.getRandomElements().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(self.random.getRandomElements()[indexPath.row])"
        return cell!
    }
}
