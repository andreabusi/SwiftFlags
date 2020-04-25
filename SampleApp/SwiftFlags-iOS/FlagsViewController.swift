//
//  FlagsViewController.swift
//  SwiftFlags-iOS
//
//  Created by Busi Andrea on 25/04/2020.
//  Copyright © 2020 BubiDevs. All rights reserved.
//

import UIKit
import SwiftFlags

class FlagsViewController: UITableViewController {

    private let countries = ["it", "japan", "united states", "england"]
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SwiftFlags"
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let country = countries[indexPath.row]
        if let flag = SwiftFlags.flag(for: country) {
            cell.textLabel?.text = "\(flag) \(country.capitalized)"
            cell.detailTextLabel?.text = nil
        } else {
            cell.textLabel?.text = "\(country)"
            cell.detailTextLabel?.text = "No flag available"
        }
        return cell
    }
}

