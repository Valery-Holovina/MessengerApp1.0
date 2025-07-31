//
//  ProfileViewModel.swift
//  MessengerApp1.0
//
//  Created by Valery on 31.07.2025.
//

import Foundation
import _PhotosUI_SwiftUI
import SwiftUICore

@Observable class ProfileViewModel {
    var selectedItem: PhotosPickerItem? {
        didSet{ Task{
            try await loadImage()
        }}
    }
    var profileImage: Image?
    
    func loadImage() async throws{
        guard let item = selectedItem else{return}
        guard let imageData = try await item.loadTransferable(type: Data.self) else{return}
        guard let uiImage = UIImage(data: imageData) else{return}
        self.profileImage = Image(uiImage: uiImage)
        
    }
}
