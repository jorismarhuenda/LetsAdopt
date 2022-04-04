//
//  ConversationModelTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import Pods_LetsAdopt
@testable import LetsAdopt

 // MARK: - ConversationsModel Tests

class ConversationsModelTests: XCTestCase {
    
    func testInitializeConversation() {
        let conversation = Conversation(id: "test", name: "", otherUserEmail: "", latestMessage: .init(date: "", text: "", isRead: true))
        XCTAssertEqual(conversation.id, "test")
    }
}
