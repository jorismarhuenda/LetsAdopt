//
//  ChatDataBaseManager.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 17/02/2022.
//

import Foundation
import Firebase
import MessageKit
import CoreLocation

final class ChatDatabaseManager {
    
}

struct ChatAppUser {
    let fullName: String
    let emailAddress: String

    var safeEmail: String {
        var safeEmail = emailAddress.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
        return safeEmail
    }

    var profilePictureFileName: String {
        //afraz9-gmail-com_profile_picture.png
        return "\(safeEmail)_profile_picture.png"
    }
}

struct SummaryUser {
    let email: String
    var name: String
}
