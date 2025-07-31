//
//  ProfileView.swift
//  MessengerApp1.0
//
//  Created by Valery on 30.07.2025.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @State var viewModel = ProfileViewModel()
    let user:User
    
    var body: some View {
        VStack{
            //header
            VStack{
            
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage{
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                           
                    }else{
                        Image(user.profileImageURL ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    }
                }
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
               
            }
            //list
            
            List{
                Section{
                    ForEach(SettingsOptionsViewModel.allCases){option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.imageBackgroundColor)
                            Text(option.title)
                                .font(.subheadline)
                            
                        }
                    }
                }
                Section{
                    Button("Log Out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
