//
//  ChatModelTest.swift
//  LetsAdoptTests
//
//  Created by marhuenda joris on 04/04/2022.
//

import XCTest
@testable import LetsAdopt
import CoreLocation
import MessageKit

 // MARK: - ChatModel Tests

class ChatModelTests: XCTestCase {

     func testInitializeMessage() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .text("")
         )
         XCTAssertEqual(message.messageId, "test")
     }

     func testMessageKingText() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .text("")
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "text")
     }

     func testMessageKindAttributedText() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .attributedText(NSAttributedString())
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "attributed_text")
     }

     func testMessageKindPhoto() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .photo(Media(placeholderImage: UIImage(), size: CGSize()))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "photo")
     }

     func testMessageKindVideo() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .video(Media(placeholderImage: UIImage(), size: CGSize()))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "video")
     }

     func testMessageKindLocation() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .location(Location(location: CLLocation(), size: CGSize()))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "location")
     }

     func testMessageKindEmoji() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .emoji("")
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "emoji")
     }

     func testMessageKindAudio() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .audio(Audio(url: URL(string: "/main")!, duration: 1, size: CGSize()))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "audio")
     }

     func testMessageKindContact() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .contact(Contact(displayName: "", initials: "", phoneNumbers: [], emails: []))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "contact")
     }

     func testMessageKindCustom() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .custom(nil)
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "customc")
     }

     func testMessageKindLinkPreview() {
         let message = Message(
             sender: Sender(photoURL: "", senderId: "", displayName: ""),
             messageId: "test",
             sentDate: Date(),
             kind: .linkPreview(Link(text: nil, attributedText: nil, url: URL(string: "/main")!, title: nil, teaser: "", thumbnailImage: UIImage(systemName: "xmark")!))
         )
         let result = message.kind.messageKindString
         XCTAssertEqual(result, "link_preview")
     }
 }

 private struct Audio: AudioItem {
     var url: URL
     var duration: Float
     var size: CGSize
 }

 private struct Contact: ContactItem {
     var displayName: String
     var initials: String
     var phoneNumbers: [String]
     var emails: [String]
 }

 private struct Link: LinkItem {
     var text: String?
     var attributedText: NSAttributedString?
     var url: URL
     var title: String?
     var teaser: String
     var thumbnailImage: UIImage
 }
