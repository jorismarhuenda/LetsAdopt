//
//  HistoryModelTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt

class HistoryModelTest: XCTestCase {
    
    func testInitializeHistoryModel() {
        let model = HistoryModel()
        XCTAssertEqual(model.histories.count, 0)
    }
    
    func testAppend() {
        let model = HistoryModel()
        model.append("test")
    }
}
