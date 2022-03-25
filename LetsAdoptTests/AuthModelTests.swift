//
//  AuthModelTests.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 25/03/2022.
//

import XCTest
@testable import Pods_LetsAdopt
@testable import LetsAdopt

class AuthModelTests: XCTestCase {
    
    func testMyUserInit () {
        let myUser = MyUser (id: "111", UID: "111", address: "Foix", dateOfBirth: "12 aout 1996", email: "marhuendajoris@gmail.com", fullname: "Marhuenda joris", gender: "male", password: "************", phone: "06111111111", token: "111111", username: "Jorisdu09", avatar: "", favorites: [""], following: ["2"], followers: ["2"])
        
        XCTAssertEqual("111", myUser.id)
        XCTAssertEqual("111", myUser.UID)
        XCTAssertEqual("Foix", myUser.address)
        XCTAssertEqual("12 aout 1996", myUser.dateOfBirth)
        XCTAssertEqual("marhuendajoris@gmail.com", myUser.email)
        XCTAssertEqual("Marhuenda joris", myUser.fullname)
        XCTAssertEqual("male", myUser.gender)
        XCTAssertEqual("************", myUser.password)
        XCTAssertEqual("06111111111", myUser.phone)
        XCTAssertEqual("111111", myUser.token)
        XCTAssertEqual("Jorisdu09", myUser.username)
        XCTAssertEqual("", myUser.avatar)
        XCTAssertEqual([""], myUser.favorites)
        XCTAssertEqual(["2"], myUser.following)
        XCTAssertEqual(["2"], myUser.followers)
        
    }
}
