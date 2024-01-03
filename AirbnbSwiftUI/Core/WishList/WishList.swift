//
//  WishList.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct WishList: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 12) {
                Text("Log in to view your wishlists")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text("You can create, view or edit wishlists once you,ve logged in")
                
                Button {
                    // login function
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.top)
                
                
                Spacer()
                
                
            }
            .padding()
            .navigationTitle("Wish Lists")
        }
    }
}

#Preview {
    WishList()
}
