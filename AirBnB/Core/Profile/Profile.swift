//
//  Profile.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 1/6/25.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Log in to start planning your next trip")
                .padding(.bottom, 20)
            //BUTTON
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
            HStack {
                Text("Don't have an account?")
                
                Text("Sign up?")
                    .fontWeight(.semibold)
                    .underline()
            }

            .font(.caption)
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessiblity")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }.padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    Profile()
}
