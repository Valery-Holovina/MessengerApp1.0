//
//  SettingsOptionsViewModel.swift
//  MessengerApp1.0
//
//  Created by Valery on 30.07.2025.
//

import Foundation
import SwiftUICore

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable{
 
    case darkMode // = 0
    case activeStatus // = 1
    case accessibility// =  2
    case privacy// = 3
    case notifications // = 4
    
    var title: String{
        switch self{
            
        case .darkMode:
            return "Dark mode"
        case .activeStatus:
            return "Active status"
        case .accessibility:
            return "Accessibility"
        case .privacy:
            return "Privacy"
        case .notifications:
            return "Notifications"
        }
    }
    
    var imageName: String{
        switch self{
            
        case .darkMode:
            return "moon.circle.fill"
        case .activeStatus:
            return "message.badge.circle.fill"
        case .accessibility:
            return "person.circle.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notifications:
            return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color{
        switch self{
            
        case .darkMode:
            return .black
        case .activeStatus:
            return Color(.systemGreen)
        case .accessibility:
            return .black
        case .privacy:
            return Color(.systemBlue)
        case .notifications:
            return Color(.systemPurple)
        }
    }
    
    var id: Int {return self.rawValue}
    
}
