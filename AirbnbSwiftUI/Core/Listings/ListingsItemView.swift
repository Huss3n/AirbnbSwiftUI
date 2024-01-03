//
//  ListingsItemView.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct ListingsItemView: View {
    var body: some View {
        VStack {
            // images
            ListingCorousel()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            // listing details
            HStack(alignment: .top) {
                // listing name
                VStack(alignment: .leading) {
                    Text("Kileleshwa, Nairobi")
                        .font(.headline)
                        .foregroundStyle(.black)
                    
                    Text("12 km away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("Kshs 6700")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // rating
               Ratings()
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingsItemView()
}
