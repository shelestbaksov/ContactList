//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Leysan Latypova on 23.01.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var contact: Contact!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        
        phoneNumberLabel.text = "Phone: \(contact.telephoneNumber)"
        eMailLabel.text = "E-mail: \(contact.eMail)"

    }

}
