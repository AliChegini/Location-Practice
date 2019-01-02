//
//  DetailController.swift
//  LocationPractice
//
//  Created by Ehsan on 31/12/2018.
//  Copyright © 2018 Ali C. All rights reserved.
//

import UIKit

class DetailController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        return cell
    }
    
    
}
