//
//  Person.swift
//  BasicUnitTest
//
//  Created by Austin Dobberfuhl on 1/29/24.
//

import Foundation

class Person {
    let firstName: String
    let lastName: String
    var afraidOfCommitment: Bool
    var money: Int
    let age: Int
    
    init(firstName: String, lastName: String, afraidOfCommitment: Bool, money: Int, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.afraidOfCommitment = afraidOfCommitment
        self.money = money
        self.age = age
    }
        
    
    var fullName: String {
                return firstName + " " + lastName
            }
    
    func seekTherapy () {
        afraidOfCommitment = false
    }
    
    func truam() {
        afraidOfCommitment = true
    }
    
    func getCashMoney() {
        money += 100
    }
    
}
