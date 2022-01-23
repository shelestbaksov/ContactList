//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Leysan Latypova on 23.01.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {

    private let contactList = Contact.DataManager.makePeopleDataSource()
    
    

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(contactList[section].fullName)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contactList[indexPath.section]
        
            if indexPath.row == 0 {
                content.text = person.telephoneNumber
                content.image = UIImage(systemName: "phone")
            } else {
                content.text = person.eMail
                content.image = UIImage(systemName: "mail")
            }
        
        cell.contentConfiguration = content
        
        return cell
    }

}
   
