//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Leysan Latypova on 23.01.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    private var contactList = Contact.DataManager.makePeopleDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        return cell
    }

    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contactList[indexPath.row]
        contactInfoVC.contact = contact
    }
    

}
