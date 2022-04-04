//
//  CoreTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 01/04/2022.
//

import XCTest
 @testable import Pods_LetsAdopt
@testable import LetsAdopt

 // MARK: - Core Tests

 class CoreTests: XCTestCase {

     // MARK: Set Up
     
     override func setUp() {
         super.setUp()

         UserDefaults().reset()
     }

     // MARK: Is First Launch App
     
     func testSetIsNotFirstLaunchApp() {
         Core.shared.setIsNotFirstLauchApp()
         let result = Core.shared.isFirstLauchApp()
         XCTAssertFalse(result)
     }

     func testSetIsFirstLaunchApp() {
         Core.shared.setIsFirstLauchApp()
         let result = Core.shared.isFirstLauchApp()
         XCTAssertTrue(result)
     }

     // MARK: Is User Login
     
     func testIsRememberMe() {
         let result = Core.shared.isRememberMe()
         XCTAssertFalse(result)
     }

     func testIsUserLogin() {
         let result = Core.shared.isUserLogin()
         XCTAssertFalse(result)
     }

     func testSetIsUserLogin() {
         Core.shared.setIsUserLogin(true)
         let result = Core.shared.isUserLogin()
         XCTAssertTrue(result)
     }

     // MARK: Token
     
     func testSetToken() {
         let token = "test"

         Core.shared.setToken(token)
         let result = Core.shared.getToken()
         XCTAssertEqual(result, token)
     }

     func testGetTokenEmpty() {
         let result = Core.shared.getToken()
         XCTAssertEqual(result, "")
     }

     // MARK: Current Email
     
     func testGetCurrentUserEmailEmpty() {
         let result = Core.shared.getCurrentUserEmail()
         XCTAssertEqual(result, "")
     }

     func testSetCurrentUserEmail() {
         let email = "test@letsadopt.com"

         Core.shared.setCurrentUserEmail(email)
         let result = Core.shared.getCurrentUserEmail()
         XCTAssertEqual(result, email)
     }

     // MARK: Current Name
     
     func testGetCurrentUserFullNameEmpty() {
         let result = Core.shared.getCurrentUserFullName()
         XCTAssertEqual(result, "")
     }

     func testSetCurrentUserFullName() {
         let name = "test"

         Core.shared.setCurrentUserFullName(name)
         let result = Core.shared.getCurrentUserFullName()
         XCTAssertEqual(result, name)
     }

     // MARK: Current UID
     
     func testSetCurrentUserID() {
         let id = "test"

         Core.shared.setCurrentUserID(id)
         let result = Core.shared.getCurrentUserID()
         XCTAssertEqual(result, id)
     }

     func testGetCurrentUserID() {
         let result = Core.shared.getCurrentUserID()
         XCTAssertEqual(result, "")
     }

     // MARK: Key Name
     
     func testSetKeyName() {
         let keyName = "test"

         Core.shared.setKeyName(keyName)
         let result = Core.shared.getKeyName()
         XCTAssertEqual(result, keyName)
     }

     func testGetKeyNameEmpty() {
         let result = Core.shared.getKeyName()
         XCTAssertEqual(result, "")
     }

     // MARK: Search History Key
     
     func testAddKeySearchToHistory() {
         let key = "test"
         Core.shared.addKeySearchToHistory(key: key)
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.first, key)
     }

     func testGetKeySearchHistoryWithMultipleKeys() {
         let key = "test"
         for i in 0..<10 {
             Core.shared.addKeySearchToHistory(key: key + "\(i)")
         }
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.first, key + "\(9)")
     }

     func testGetKeySearchHistoryEmpty() {
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.count, 0)
     }

     func testClearSearchHistory() {
         let key = "test"
         Core.shared.addKeySearchToHistory(key: key)
         Core.shared.clearSearchHistory()
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.count, 0)
     }

     func testClearKeyWithIndex() {
         let key = "test"
         let key2 = "test2"
         Core.shared.addKeySearchToHistory(key: key)
         Core.shared.addKeySearchToHistory(key: key2)
         Core.shared.clearKey(index: 0)
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.first, key)
     }

     func testClearKeyEmptyHistory() {
         Core.shared.clearKey(index: 0)
         let result = Core.shared.getKeySearchHistory()
         XCTAssertEqual(result.count, 0)
     }
 }
