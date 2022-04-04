//
//  ModelTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt

class ModelTest: XCTestCase {
    
    func testInitializeMyUser() {
        let user = MyUser(id: "test")
        XCTAssertEqual(user.id, "test")
    }
}
