//
//  PetModelTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt

class PetModelTest : XCTestCase {
    
    func testInitializePet() {
        let pet = Pet(id: "test")
        XCTAssertEqual(pet.id, "test")
    }
}
