//
//  Model.swift
//  ContactsApp
//
//  Created by Иван on 9/8/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import Foundation

var contactsData = Person.getData()

struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return ("\(firstName) \(lastName)")
    }
    var phoneNumber: String
    var email: String
    
    static func getData() -> [Person] {
        var contacts: [Person] = []
        let firstNames = DataManager.data.firstNames.shuffled()
        let lastNames = DataManager.data.lastNames.shuffled()
        let phoneNumbers = DataManager.data.phoneNumbers.shuffled()
        let emails = DataManager.data.emails.shuffled()
        
        for data in 0..<firstNames.count {
            let person = Person(firstName: firstNames[data],
                                lastName: lastNames[data],
                                phoneNumber: phoneNumbers[data],
                                email: emails[data])
            contacts.append(person)
        }
        return contacts
    }
}


class DataManager {
    
    var firstNames = ["Ivan", "Hanna", "Alex",
                      "Vera", "Vladimir", "Irina",
                      "Renard", "Larisa", "Igor"]
    var lastNames = ["Smith", "Jones", "Colin",
                     "Pitt", "Sterling", "Alba",
                     "Terry" ,"Beckham", "Howard"]
    var phoneNumbers = ["+11111","+22222","+33333",
                        "+44444","+55555","+66666",
                        "+77777","+88888","+99999"]
    var emails = ["aaaaa@mail.ru","bbbbb@mail.ru","ccccc@mail.ru",
                  "ddddd@mail.ru","eeeee@mail.ru","fffff@mail.ru",
                  "hhhhh@mail.ru","iiiii@mail.ru","jjjjj@mail.ru"]
    
    static let data = DataManager()
    
}
