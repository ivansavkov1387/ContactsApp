//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Иван on 9/9/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var phoneAndEmail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = phoneAndEmail.phoneNumber
        emailLabel.text = phoneAndEmail.email
    }
}
