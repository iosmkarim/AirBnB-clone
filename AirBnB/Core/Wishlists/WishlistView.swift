//
//  WishlistView.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 1/10/25.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log into view your wishlist")
                        .font(.headline)
                    Text("You can create, view or edit wishlists once you've logged in")
                    
                }
                
                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.bottom, 22)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
       
    }
}

#Preview {
    WishlistView()
}
