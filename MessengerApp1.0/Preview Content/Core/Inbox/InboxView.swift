//
//  InboxView.swift
//  MessengerApp1.0
//
//  Created by Valery on 29.07.2025.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNowView()

            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack{
                        Image(systemName: "person.circle.fill")
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("show new message view")
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                        
                    }

                }
            }
        }
    }
}

#Preview {
    InboxView()
}
