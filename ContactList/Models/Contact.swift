//
//  Person.swift
//  ContactList
//
//  Created by Leysan Latypova on 23.01.2022.
//

struct Contact {
    let name: String
    let surname: String
    let telephoneNumber: String
    let eMail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    final class DataManager {
        
        static var names: [String] = [
            "Harry",
            "Ross",
            "Bruce",
            "Morgan",
            "Albert",
            "Tom",
            "Larry",
            "Debora",
            "Simmons",
            "Michelle",
            "Perry",
            "Frank",
            "Butler",
            "Shirley"
        ]
        static var surnames: [String] = [
            "Ruth",
            "Jackson",
            "Debra",
            "Allen",
            "Gerald",
            "Harris",
            "Raymond",
            "Carter",
            "Jacqueline",
            "Torres",
            "Joseph",
            "Nelson",
            "Carlos",
            "Sanchez"
        ]
        
        static let telephoneNumbers: [String] = [
            "111111",
            "222222",
            "333333",
            "444444",
            "555555",
            "666666",
            "777777",
            "888888",
            "999999",
            "121212",
            "131313",
            "141414",
            "151515",
            "161616"
        ]
        
        static var eMails: [String] = [
            "111@111.com",
            "222@222.com",
            "333@333.com",
            "444@444.com",
            "555@555.com",
            "666@666.com",
            "777@777.com",
            "888@888.com",
            "999@999.com",
            "121@212.com",
            "131@313.com",
            "141@414.com",
            "151@515.com",
            "161@616.com"
        ]
        
        static func makePeopleDataSource() -> [Contact] {

            
            return (0..<14).map { _ in
                    Contact(
                    name: names.randomElement() ?? "",
                    surname: surnames.randomElement() ?? "",
                    telephoneNumber: telephoneNumbers.randomElement() ?? "",
                    eMail: eMails.randomElement() ?? "")
                
            }
            
        }
    }
}
