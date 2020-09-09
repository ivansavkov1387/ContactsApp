//
//  SectionsViewController.swift
//  ContactsApp
//
//  Created by Иван on 9/9/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class SectionsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactsData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        if indexPath.row == 0 {
            cell.imageView?.image = UIImage(systemName: "phone")
            cell.textLabel?.text = contactsData[indexPath.section].email
        } else if indexPath.row == 1 {
            cell.imageView?.image = UIImage(systemName: "envelope")
            cell.textLabel?.text = contactsData[indexPath.section].phoneNumber
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactsData[section].fullName
    }
}
