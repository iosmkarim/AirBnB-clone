//
//  ListingDetailView.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 12/23/24.
//

import SwiftUI

struct ListingDetailView: View {
    var images = [
    
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4"
    ]
    var body: some View {
        ScrollView {
          ListingImageCarouselView()
            .frame(height: 290)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing:2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .foregroundStyle(.black)
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
        }
    }
}

#Preview {
    ListingDetailView()
}
