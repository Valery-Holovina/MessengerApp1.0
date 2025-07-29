//
//  RegistrationView.swift
//  MessengerApp1.0
//
//  Created by Valery on 29.07.2025.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            // logo image
            
            Image("MessengerIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
                .shadow(radius: 5)
            
            //text field
            VStack(spacing: 12){
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                TextField("Enter your fullname", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 24)
            }
            Button {
                
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding(.vertical)
            
            
            
            Spacer()
            Spacer()
            
            Divider()
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
      
    }
}

#Preview {
    RegistrationView()
}
