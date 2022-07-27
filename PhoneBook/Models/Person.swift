//
//  Person.swift
//  PhoneBook
//
//  Created by Anastasia Perminova on 27.07.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    static func getData() -> [Person] {
        var list = [Person]()
        let data = DataManager()
        for _ in 0...8 {
            let personToAdd = Person(name: data.names.randomElement()!, surname: data.surnames.randomElement()!, email: data.emails.randomElement()!, phoneNumber: data.phoneNumbers.randomElement()!)
            list.append(personToAdd)
        }
        return list
    }
}
