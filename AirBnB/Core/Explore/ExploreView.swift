//
//  ExploreView.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 12/21/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
