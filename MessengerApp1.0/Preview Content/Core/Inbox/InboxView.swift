//
//  InboxView.swift
//  MessengerApp1.0
//
//  Created by Valery on 29.07.2025.
//

import SwiftUI

struct InboxView: View {
    
    @State private var showNewMessageView = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNowView()
                
                List{
                    ForEach(0..<10){message in
                        InboxRowView()
                        
                    }
                }
                .listStyle(.plain)
                .frame(height: UIScreen.main.bounds.height - 120)

            }
            .fullScreenCover(isPresented: $showNewMessageView, content: {
               NewMessageView()
         
            })
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
                        showNewMessageView.toggle()
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
