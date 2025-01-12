//
//  MainTabView.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 1/10/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            WishlistView()
                .tabItem {
                    Label("Wishlists", systemImage: "heart")
                }
            
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
