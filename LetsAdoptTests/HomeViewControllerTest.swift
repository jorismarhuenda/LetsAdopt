//
//  HomeViewControllerTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt

class HomeViewControllerTest: XCTestCase {
    
    var vc: HomeViewController!
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
        
        vc.loadViewIfNeeded()
    }
    
    override func tearDownWithError() throws {
        
        try super.tearDownWithError()
        
        vc = nil
    }
    
    func testCellSizes() {
        
        let size = vc.cellSizes.first
        
        XCTAssertEqual(size?.width, 157)
    }
    
    func testInitView() {
        
        vc.initView()
        
        XCTAssertEqual(vc.ageRangeSlider.maxValue, 15)
    }
}
