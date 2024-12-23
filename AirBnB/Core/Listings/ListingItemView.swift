//
//  ListingItemView.swift
//  AirBnB
//
//  Created by Md Rezaul Karim on 12/21/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
           //images
            ListingImageCarouselView()
                .frame(height: 270)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
          // listing details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)

                }
                
                Spacer()
                //ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
