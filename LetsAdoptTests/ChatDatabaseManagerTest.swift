//
//  ChatDatabaseManagerTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt

class ChatDatabaseManagerTest: XCTestCase {
    
    func testSafeEmail() {
        let email = "test@letsadopt.com"
        let result = ChatDatabaseManager.safeEmail(emailAddress: email)
        
        XCTAssertEqual(result, "test-letsadopt-com")
    }
    
    func testRestoreEmail() {
        let email = "test-gmail-com"
        let result = ChatDatabaseManager().restoreEmail(safeEmail: email)
        
        XCTAssertEqual(result, "test@gmail.com")
    }
    
    func testChatAppUserProperties() {
        let appUser = ChatAppUser(fullName: "test", emailAddress: "test@letsadopt.com")
        XCTAssertEqual(appUser.safeEmail, "test-letsadopt-com")
        XCTAssertEqual(appUser.profilePictureFileName, "test-letsadopt-com_profile_picture.png")
    }
}
