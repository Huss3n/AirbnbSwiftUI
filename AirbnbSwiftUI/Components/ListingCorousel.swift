//
//  ListingCorousel.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct ListingCorousel: View {
    let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingCorousel()
}
