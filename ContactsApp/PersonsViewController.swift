//
//  PersonsViewController.swift
//  ContactsApp
//
//  Created by Иван on 9/8/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let contact = contactsData[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.phoneAndEmail = contactsData[indexPath.row]
        detailsVC.title = contactsData[indexPath.row].fullName
    }
}
