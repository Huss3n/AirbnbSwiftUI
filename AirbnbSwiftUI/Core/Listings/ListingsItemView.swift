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
            TabView {
                ForEach(0...4, id: \.self) { image in
                    Rectangle()
                }
            }
            .tabViewStyle(.page)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            // listing details
            HStack(alignment: .top) {
                // listing name
                VStack(alignment: .leading) {
                    Text("Maimi, Florida")
                        .font(.headline)
                    
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    
                    HStack {
                        Text("$567")
                            .font(.headline)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                    Text("4.98")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingsItemView()
}
