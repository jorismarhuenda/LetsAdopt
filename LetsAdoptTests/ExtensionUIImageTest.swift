//
//  ExtensionUIImageTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 01/04/2022.
//

import XCTest
@testable import LetsAdopt

 // MARK: - ExtensionUIImage Tests

 class ExtensionUIImageTests: XCTestCase {

     // MARK: Properties
     
     var image: UIImage?

     override func setUp() {
         super.setUp()

         if let systemImage = UIImage(systemName: "doc") {
             UIGraphicsBeginImageContext(CGSize(width: 1024, height: 1024))
             systemImage.draw(in: CGRect(x: 0, y: 0, width: 1024, height: 1024))

             let newImage = UIGraphicsGetImageFromCurrentImageContext()
             UIGraphicsEndImageContext()

             image = newImage!
         }
     }
     
     func testResizedImage() {
         if let newImage = image?.resized(withPercentage: 0.5) {
             XCTAssertEqual(newImage.size.width, 512)
         }
     }

     func testCompressImage() {
         guard let dogImage = UIImage(named: "test_avt") else { return }
         let data = dogImage.compress(to: 128)
         XCTAssertEqual(data.count, 144878)
     }
 }
