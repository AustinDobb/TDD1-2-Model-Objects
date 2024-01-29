//
//  TestPerson.swift
//  BasicUnitTestTests
//
//  Created by Austin Dobberfuhl on 1/29/24.
//

import XCTest
@testable import BasicUnitTest

final class TestPerson: XCTestCase {
    var testPerson: Person?
    
    let expextedFirstName = "John"
    let expectedLastName = "Doe"
    let expectedAfraidOfCommitment = true
    let expectedAmountOfMoney = 10
    let expectedAge = 18
    
    override func setUpWithError() throws {
        self.testPerson = Person(firstName: expextedFirstName, lastName: expectedLastName, afraidOfCommitment: expectedAfraidOfCommitment, money: expectedAmountOfMoney, age: expectedAge)
    }

    override func tearDownWithError() throws {
        
    }

    func testPersonCreation () {
        XCTAssertNotNil(testPerson)
    }
    
   
    func testFirstName() {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        XCTAssertEqual(testPerson.firstName, expextedFirstName)
    }
    
    func testLastName() {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        XCTAssertEqual(testPerson.lastName, expectedLastName)
    }
    
    func testFullName() {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        let fullName = expextedFirstName + " " + expectedLastName
        XCTAssertEqual(testPerson.fullName, fullName)
    }
    
    func testEmotionalResponse() {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        XCTAssertTrue(testPerson.afraidOfCommitment)
        testPerson.seekTherapy()
        XCTAssertFalse(testPerson.afraidOfCommitment)
        testPerson.truam()
        XCTAssertTrue(testPerson.afraidOfCommitment)
    }
    
    
    func testAdult() {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        let isAdult = 17
        XCTAssertGreaterThan(testPerson.age, isAdult)
    }
    
    func testCanBuyHouse () {
        guard let testPerson else {
            XCTFail("No Person")
            return
            }
        let neededAmountForCarboardBox = 50
        XCTAssertGreaterThan(neededAmountForCarboardBox, testPerson.money)
        testPerson.getCashMoney()
        XCTAssertLessThan(neededAmountForCarboardBox, testPerson.money)
        
    }
    
}
