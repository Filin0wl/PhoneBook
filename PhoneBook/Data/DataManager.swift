//
//  DataManager.swift
//  PhoneBook
//
//  Created by Anastasia Perminova on 27.07.2022.
//

import Foundation

class DataManager {
    static let names = ["Bruce", "John", "Aaron", "Tim", "Allan", "Sharon", "Ted", "Carl", "Nicola"]
    static let surnames = ["Butler", "Smith", "Black", "Robertson", "Murphy", "Williams", "Isaacson", "Jankin", "Pennyworth", "Dow"]
    static let emails = ["ssss@mail.ru", "ddd@mail.ru", "fffff@mail.ru", "wwwww@mail.ru", "kkkkk@mail.ru", "aaaa@mail.ru", "ccccc@mail.ru", "lllll@mail.ru", "pppppppp@mail.ru"]
    static let phoneNumbers = ["123124", "949420", "293982", "958380", "932023", "0494933", "039224", "03924292", "20492002"]
    
    static func getPersonsData() -> [Person] {
        var list = [Person]()
        for _ in 0...8 {
            let personToAdd = Person(name: names.randomElement()!, surname: surnames.randomElement()!, email: emails.randomElement()!, phoneNumber: phoneNumbers.randomElement()!)
            list.append(personToAdd)
        }
        return list
    }
    
    static func getDetailPersonData() -> [PersonDetail] {
        var list = [PersonDetail]()
        for _ in 0...8 {
            let personToAdd = PersonDetail(name: names.randomElement()!, surname: surnames.randomElement()!, phoneNumberEmail: [phoneNumbers.randomElement()!, emails.randomElement()!])
            list.append(personToAdd)
        }
        return list
    }
}
