//
//  User.swift
//  MessengerApp1.0
//
//  Created by Valery on 31.07.2025.
//

import Foundation

struct User: Codable, Identifiable, Hashable{
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    let profileImageURL: String?
    
}

extension User {
    static let MOCK_USER = User(fullName: "Aaron Warner", email: "aaron13warner@gmail.com", profileImageURL: "aaron")
}
